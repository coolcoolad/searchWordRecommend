# -*- coding: utf-8 -*-

import cluster
from common import utils

def main():
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

  hobbyDict = {}

  ff = open('userInfo.txt')
  lines = ff.readlines()
  count = 0
  for line in lines:
    id, userName, age, sex, hobby, consumLevel, hotelStar = line.strip()[1:-1].split(',')
    if hobby not in hobbyDict:
      hobbyDict[hobby] = count
      count += 1
  hobbyFeat = [0]*len(hobbyDict)
  userData = []
  userIds = []
  for line in lines:
    id, userName, age, sex, hobby, consumLevel, hotelStar = line.strip()[1:-1].split(',')
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
  ff.close()
  userData = utils.matNorm(userData)
  '''for data in userData:
    print data
  return'''

  labels, centers = cluster.cluster(userData,4)
  for i,id in enumerate(userIds):
    print id[1],labels[i]

if __name__ == '__main__':
  main()