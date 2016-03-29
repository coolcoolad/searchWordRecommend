# -*- coding: utf-8 -*-

import sqlite3

def excuteSqlScript(scriptFileName):
  sqlFile = open(scriptFileName)
  sqls = sqlFile.read()
  conn = sqlite3.connect('recService.db')
  conn.executescript(sqls)
  conn.commit()
  conn.close()
  sqlFile.close()

def initDB():
  excuteSqlScript('userInfo.sql')

if __name__ == '__main__':
  initDB()