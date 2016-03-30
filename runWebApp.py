# -*- coding: utf-8 -*-

import os, sys
sys.path.insert(0, os.path.abspath('./flaskPackages'))
from flaskPackages.flask import Flask, request
from sqliteDB.initDB import initDB
from controller.recController import *

app = Flask(__name__)

@app.route('/getRecmmendList')
def getRecmmendList():
  try:
    uid = int(request.args.get('uid'))
    return getRecmmendListController(uid)
  except Exception,ex:
    return ex

@app.route('/getMatchList')
def getMatchList():
  try:
    key = request.args.get('search_key')
    return getMatchListController(key)
  except Exception,ex:
    return ex

def initData():
  initDB()
  return

if __name__ == '__main__':
  initData()
  app.run(host='23.105.199.99')