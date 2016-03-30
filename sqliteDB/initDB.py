# -*- coding: utf-8 -*-

import sqlite3
from dbConf import *

def excuteSqlScript(scriptFileName):
  sqlFile = open(scriptFileName)
  sqls = sqlFile.read()
  conn = sqlite3.connect(dbPath)
  conn.executescript(sqls)
  conn.commit()
  conn.close()
  sqlFile.close()

def initDB():
  excuteSqlScript(currPath+'/userInfo.sql')
  excuteSqlScript(currPath+'/userSearchInfo.sql')
  excuteSqlScript(currPath+'/search_result.sql')

if __name__ == '__main__':
  initDB()