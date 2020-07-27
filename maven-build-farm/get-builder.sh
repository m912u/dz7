#!/bin/bash
# Скрипт-инициатор сборки. Получает из репозитория скрипт-сборщик build.sh и запускает его. Позволяет не пересобирать контейнер в ситуациях, когда требуется изменить настройки сборки.
# Принимает параметром каталог, в который будут помещены артефакты сборки.
git clone https://github.com/m912u/dz7_build_script.git build-script
chmod +x+ build-script/build.sh
build-script/build.sh $1
