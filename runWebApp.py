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
    print ex
    return '参数错误 或者 程序内部错误'

@app.route('/getMatchList')
def getMatchList():
  try:
    key = request.args.get('search_key')
    key = key.encode('utf-8')
    return getMatchListController(key)
  except Exception,ex:
    print ex
    return '参数错误 或者 程序内部错误'

def initData():
  initDB()
  return

if __name__ == '__main__':
  initData()
  app.run(host='23.105.199.99')