FROM openjdk:jre-alpine

LABEL maintainer="Mikhail <iamnotabot>"

ENV TOMCAT_VERSION_MAJOR 9
ENV TOMCAT_VERSION_FULL  9.0.37

RUN mkdir -p /opt &&\
  apk add --update curl &&\
  curl -LO http://mirrors.standaloneinstaller.com/apache/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz &&\
  curl -LO https://www.apache.org/dist/tomcat/tomcat-${TOMCAT_VERSION_MAJOR}/v${TOMCAT_VERSION_FULL}/bin/apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz.sha512 &&\
  sha512sum -c apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz.sha512 &&\
  gunzip -c apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz | tar -xf - -C /opt &&\
  rm -f apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz apache-tomcat-${TOMCAT_VERSION_FULL}.tar.gz.sha512 &&\
  ln -s /opt/apache-tomcat-${TOMCAT_VERSION_FULL} /opt/tomcat &&\
  rm -rf /opt/tomcat/webapps/examples /opt/tomcat/webapps/docs &&\
  apk del curl &&\
  rm -rf /var/cache/apk/*

ENV CATALINA_HOME /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"]
