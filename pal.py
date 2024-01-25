import os
import time

from flask import Flask
from flask_basicauth import BasicAuth

app = Flask(__name__)

@app.route('/restart-pal')
def restart_pal():
    print(os.system('./rcon "Broadcast OutOfMemoAndRestartingIn30Seconds"'))
    time.sleep(15)
    print(os.system('./rcon "Save"'))
    print(os.system('./rcon "Broadcast AutoSavedAndRestartingIn15Seconds"'))
    time.sleep(15)
    print(os.system("sudo systemctl stop palworld"))
    print(os.system("sudo systemctl start palworld"))
    return 'restart-success'


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=False, port=8000)
