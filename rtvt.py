import os
import subprocess
import time
import sys


def create_and_activate_venv():
    try:
        if not os.path.exists('./quick-project-start'):
            subprocess.run('git clone https://github.com/sergeynikol/quick-project-start.git', shell=True, executable='/bin/bash')
        # Check if virtual environment already exists
        # if not os.path.exists('./venv'):
        #     time.sleep(5)
            subprocess.call(['ls'])
        if os.path.exists('./venv'):
            time.sleep(5)
            if hasattr(sys, 'real_prefix') or (hasattr(sys, 'base_prefix') and sys.base_prefix != sys.prefix):
                print("Virtual environment venv is activated.")
                subprocess.call(['pip-compile', './quick-project-start/requirements.in'])
                subprocess.call(['python3', '-m', 'pip', 'install', '-r', './quick-project-start/requirements.txt'])
            else:
                print("Virtual environment is not activated.")
    except ValueError as w:
        print('Errorrrrr: {}'.format(w))


if __name__ == "__main__":
    create_and_activate_venv() 
