# -*- coding: utf-8 -*-

import sqlite3

dbName = 'recommend.db'

def getAllUser():
  conn = sqlite3.connect(dbName)
  cursor = conn.execute('select * from tt')
  res = [v for v in cursor]
  conn.close()
  return res