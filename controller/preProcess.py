# -*- coding: utf-8 -*-

from common import utils
from sqliteDB.dao import getAllUserInfo

hotelStarDict = {
  '五星级':5,
  '五星型':5,
  '四星级':4,
  '四星型':4,
  '三星级':3,
  '三星型':3,
  '二星级':2,
  '二星型':2,
  '经济级':1,
  '经济型':1
}

sexDict = {
  '男':0,
  '女':1
}

def userFeatureVectorize(users):
  hobbyDict = {}

  count = 0
  for user in users:
    id, userName, age, sex, hobby, consumLevel, hotelStar = user
    if hobby not in hobbyDict:
      hobbyDict[hobby] = count
      count += 1
  hobbyFeat = [0]*len(hobbyDict)
  userData = []
  userIds = []
  for user in users:
    id, userName, age, sex, hobby, consumLevel, hotelStar = user
    age = int(age)
    sex = sexDict[sex]
    hobbyFeature = hobbyFeat[:]
    hobbyFeature[hobbyDict[hobby]] = 1
    hobby = hobbyFeature
    consumLevel = int(consumLevel)
    hotelStar = hotelStarDict[hotelStar]
    feature = [age, sex, consumLevel, hotelStar]
    feature.extend(hobby)
    userData.append(feature)
    userIds.append([id,userName])

  userData = utils.matNorm(userData)
  '''for data in userData:
    print data
  return'''
  return userData

if __name__ == '__main__':
  users = getAllUserInfo()
  userFeatureVectorize(users)