# -*- coding: utf-8 -*-

import json
import re

def getMatchResult(allKey,searchKey):
  pattern = re.compile('.*'+searchKey+'.*')
  jsonDict = {}
  for key in allKey:
    id, k, content = key
    if pattern.match(content):
      jsonDict[k] = content
  return json.dumps(jsonDict,ensure_ascii=False,indent=1)

def geneResult(recList,allKey):
  jsonDict = {}
  for rec in recList:
    jsonDict[rec[0]] = {'count':rec[1],'content':''}
  for key in allKey:
    id, k, content = key
    if k in jsonDict:
      jsonDict[k]['content'] = content
  return json.dumps(jsonDict,ensure_ascii=False,indent=1)

def printUserLabel(users,labels):
  for i,user in enumerate(users):
    id, userName, age, sex, hobby, consumLevel, hotelStar = user
    print labels[i],userName

def getGroupInfo(ids,usersInfo):
  idSet = set(ids)
  group = []
  for info in usersInfo:
    if info.id in idSet:
      group.append(info)
  return group

def getGroupSearchInfo(ids,usersSearchInfo):
  idSet = set(ids)
  group = []
  for info in usersSearchInfo:
    id, userName, key, count = info
    if id in idSet:
      group.append(info)
  return group

def getGroup(labels,uLabel,users):
  ids = []
  for i,label in enumerate(labels):
    id, userName, age, sex, hobby, consumLevel, hotelStar = users[i]
    if label == uLabel:
      ids.append(id)
  return ids

def findUserPos(uid,users):
  for i,user in enumerate(users):
    id, userName, age, sex, hobby, consumLevel, hotelStar = user
    if id == uid:
      return i
  return -1

def calDist(x,y):
  sum_ = 0
  for i in range(len(x)):
    sum_ += (x[i]-y[i])**2
  return sum_

def vecPlus(x,y):
  return [x[i]+y[i] for i in range(len(x))]

def vecDivid(x,y):
  return [v/y for v in x]

def matNorm(data):
  m = len(data)
  n = len(data[0])
  maxArr = []
  minArr = []
  for j in range(n):
    col = [data[i][j] for i in range(m)]
    maxArr.append(max(col))
    minArr.append(min(col))
  for i in range(m):
    for j in range(n):
      data[i][j] = float(data[i][j]-minArr[j])/float(maxArr[j]-minArr[j])
  return data


'''def matNorm(data):
  m, n = numpy.shape(data)
  for i in range(m):
    for j in range(n):
      data[i][j] = float(data[i][j])
  mat = numpy.mat(data)
  print m,n
  maxArr = []
  minArr = []
  for i in range(n):
    maxArr.append(max(mat[:,i]))
    minArr.append(min(mat[:,i]))
  print maxArr
  print minArr
  for i in range(m):
    for j in range(n):
      #print mat[i,j]-minArr[j],maxArr[j]-minArr[j]
      print minArr
      mat[i,j] = (mat[i,j]-minArr[j])/(maxArr[j]-minArr[j])
  return mat.A'''

if __name__ == '__main__':
  print matNorm([[1,2],[2,3],[3,3]])