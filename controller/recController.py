# -*- coding: utf-8 -*-

from cluster import cluster
from sqliteDB.dao import *
from preProcess import userFeatureVectorize
from common.utils import *
from model import *
from collFilter import *

def getMatchListController(searchKey):
  allKey = getAllKeyInfo()
  jsonStr = getMatchResult(allKey,searchKey)
  return jsonStr

def getRecmmendListController(uid):
  #从数据库读取用户特征
  users = getAllUserInfo()
  #特征向量化
  userData = userFeatureVectorize(users)
  #对用户聚类
  labels, centers = cluster(userData,4)
  #printUserLabel(users,labels)
  #return
  #获取uid所属类别
  pos = findUserPos(uid,users)
  if pos == -1:
    return 'uid is not in db'
  userLabel = labels[pos]
  #获取所有组内用户id
  ids = getGroup(labels,userLabel,users)
  #获取所有用户关键词搜索数
  usersSearchInfo = getAllUserSearchInfo()
  usersInfo = geneUserModel(users,usersSearchInfo,userData,labels)
  #获取组内所有用户关键字搜索数
  group = getGroupInfo(ids,usersInfo)
  #协同过滤获取用户所有关键字搜素数
  recList = collFilter(uid,group,userData)
  #拼凑结果给用户
  allKey = getAllKeyInfo()
  jsonStr = geneResult(recList,allKey)
  return jsonStr

if __name__ == '__main__':
  print getMatchListController('温泉')