#!/usr/bin/bash

# BASEDIR определяет путь к директории
BASEDIR=$(dirname "$0")
# Создаем виртуальное окружение
python3 -m venv venv

# выводится сообщение о том, что приложение запускается в данной директории.
echo "Executing App in '$BASEDIR'"
# aктивирует виртуальное окружение, находящееся в директории venv
source $BASEDIR/venv/bin/activate

python3 -m pip install pip-tools

python $BASEDIR/rtvt.py
