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
  for i in range(num):
    for j in range(i+1,num):
      simi[i][j] = simi[j][i] = calSimilarity(userData[i],userData[j])
  return simi

def recommend(uid,users):
  #计算用户相似度矩阵
  simiMat = calUsersSimilarity()
  #for 关键字i in 组内关键字list
  #  if uid已有关键字i的score
  #    continue
  #  sum = 0
  #  for 用户j in 组内用户
  #    sum += 用户j与用户uid的相似度 * 用户j对关键字i的score
  #  用户uid对关键字i的score[关键字i] = sum
  #  sort score
  #  返回
