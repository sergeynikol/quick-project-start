#!/usr/bin/bash

# BASEDIR определяет путь к директории
BASEDIR=$(dirname "$0")
# Создаем виртуальное окружение
python3 -m venv venv

# выводится сообщение о том, что приложение запускается в данной директории.
echo "Executing App in '$BASEDIR'"
# aктивирует виртуальное окружение, находящееся в директории venv
source $BASEDIR/venv/bin/activate
# 
python3 -m pip install pip-tools

git clone https://github.com/sergeynikol/quick-project-start.git

mv quick-project-start/.gitignore .gitignore

# mv quick-project-start/settings.json settings.json

# mv quick-project-start/.gitignore .gitignore

python $BASEDIR/quick-project-start/rtvt.py

