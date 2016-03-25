# -*- coding: utf-8 -*-

#计算用户之间的相似度w
def calSimilarity(user1,user2):
  return 0

def calUsersSimilarity(userData):
  num = len(userData)
  simi = [[0]*num for i in range(num)]
  for i in range(num):
    for j in range(i+1,num):
      simi[i][j] = simi[j][i] = calSimilarity(userData[i][1:],userData[j][1:])
  return simi

#解析请求中参数uid
#通过uid获取组内关键字list
#for 关键字i in 组内关键字list
#  if uid已有关键字i的score
#    continue
#  sum = 0
#  for 用户j in 组内用户
#    sum += 用户j与用户uid的相似度 * 用户j对关键字i的score
#  用户uid对关键字i的score[关键字i] = sum
#sort score，取前k个推荐给用户