# -*- coding: utf-8 -*-

class User:
  def __init__(self,id,index,label,keys,keysCounts):
    self.id = id
    self.index = index
    self.label = label
    self.keys = keys
    self.keysCounts = keysCounts

def geneUserModel(users,usersSearchInfo,userData,labels):
  infoDict = {}
  for info in usersSearchInfo:
    id, userName, key, count = info
    if userName not in infoDict:
      infoDict[userName] = [[key],{key:count}]
    else:
      infoDict[userName][0].append(key)
      infoDict[userName][1][key] = count
  models = []
  for i,user in enumerate(users):
    id, userName, age, sex, hobby, consumLevel, hotelStar = user
    if userName in infoDict:
      um = User(id,i,labels[i],infoDict[userName][0],infoDict[userName][1])
      models.append(um)
  return models