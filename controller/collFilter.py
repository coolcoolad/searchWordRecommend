# -*- coding: utf-8 -*-

from common.utils import *

#计算用户之间的相似度
def calSimilarity(x,y):
  dist = calDist(x,y)
  if dist < 0.001:
    dist = 0.001
  return 1/dist

def calUsersSimilarity(userData):
  num = len(userData)
  simi = [[0]*num for i in range(num)]
  maxSimi = 0
  for i in range(num):
    for j in range(i+1,num):
      simi[i][j] = simi[j][i] = calSimilarity(userData[i],userData[j])
      if maxSimi < simi[i][j]:
        maxSimi = simi[i][j]
  #把相似度缩放到0-1之间
  for i in range(num):
    for j in range(num):
      simi[i][j] = simi[i][j]/maxSimi
  return simi

def collFilter(uid,group,userData):
  user = None
  for u in group:
    if u.id == uid:
      user = u
      break
  #计算用户相似度矩阵
  simiMat = calUsersSimilarity(userData)
  #组内用户所有关键字
  allKeys = []
  for u in group:
    allKeys.extend(u.keys)
  #for 关键字i in 组内关键字list
  #  if uid已有关键字i的score
  #    continue
  #  sum = 0
  #  for 用户j in 组内用户
  #    sum += 用户j与用户uid的相似度 * 用户j对关键字i的score
  #  用户uid对关键字i的score[关键字i] = sum
  for key in allKeys:
    if key in user.keys:
      continue
    sum = 0.0
    for u in group:
      if u.id == user.id:
        continue
      if key in u.keysCounts:
        sum += simiMat[user.index][u.index] * u.keysCounts[key]
    if sum > 0:
      user.keysCounts[key] = sum
  #sort score
  #返回
  keys = user.keysCounts.items()
  return sorted(keys,key=lambda x:x[1],reverse=True)
