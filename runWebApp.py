# -*- coding: utf-8 -*-

import os, sys
sys.path.insert(0, os.path.abspath('./flask'))
from flask import Flask

app = Flask(__name__)

@app.route('/getRecmmendList')
def getRecmmendList():
  return 'hello'

if __name__ == '__main__':
  app.run()