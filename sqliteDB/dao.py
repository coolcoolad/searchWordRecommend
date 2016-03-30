# -*- coding: utf-8 -*-

import sqlite3
from dbConf import *

def getAllUserInfo():
  conn = sqlite3.connect(dbPath)
  conn.text_factory = str
  cursor = conn.execute('select * from user_info')
  res = [v for v in cursor]
  conn.close()
  return res

def getAllUserSearchInfo():
  conn = sqlite3.connect(dbPath)
  conn.text_factory = str
  cursor = conn.execute('select * from user_search_info')
  res = [v for v in cursor]
  conn.close()
  return res

def getAllKeyInfo():
  conn = sqlite3.connect(dbPath)
  conn.text_factory = str
  cursor = conn.execute('select * from search_result')
  res = [v for v in cursor]
  conn.close()
  return res

if __name__ == '__main__':
  id, userName, age, sex, hobby, consumLevel, hotelStar = getAllUserInfo()[0]
  print hobby