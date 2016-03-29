# -*- coding: utf-8 -*-

import os, sys
sys.path.insert(0, os.path.abspath('./flaskPackages'))
from flaskPackages.flask import Flask, request
from sqliteDB.initDB import initDB
from controller.recController import getRecmmendListController

app = Flask(__name__)

@app.route('/getRecmmendList')
def getRecmmendList():
  uid = request.args.get('uid')
  return getRecmmendListController(uid)

def initData():
  initDB()

if __name__ == '__main__':
  initData()
  app.run()