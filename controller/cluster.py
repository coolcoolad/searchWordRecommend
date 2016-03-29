# -*- coding: utf-8 -*-

from random import sample
from common.utils import *

def cluster(data,k, centers = None, maxItr = 1000,tol = 0.01):
  #如果未传入初始聚类中心，随机选取初始k个聚类中心，标记上类别
  if centers is None:
    centers = {}
    rand = sample(range(len(data)),k)
    for i in range(k):
      centers[i] = data[rand[i]][:]
  label = [-1]*len(data)
  itrNum = 0
  centersDelta = -1
  #while 迭代次数<迭代次数上限
  while itrNum < maxItr:
    #for 所有点
    #  计算点到个各聚类中心的距离
    #  选取最近的聚类中心的类别，作为点的类别
    for j,x in enumerate(data):
      minDist = float('inf')
      for k,v in centers.items():
        dist = calDist(v,x)
        if minDist > dist:
          label[j] = k
          minDist = dist
    #计算新的迭代中心
    sumVec = {}
    for j,x in enumerate(data):
      curLabel = label[j]
      if curLabel not in sumVec:
        sumVec[curLabel] = [x[:],1]
      else:
        sumVec[curLabel][0] = vecPlus(sumVec[curLabel][0],x)
        sumVec[curLabel][1] += 1
    centersDelta = 0
    for k,v in centers.items():
      newCenter = vecDivid(sumVec[k][0],sumVec[k][1])
      centersDelta += calDist(newCenter,centers[k])
      centers[k] = newCenter
    #if 聚类中心改变很小
    #  break
    itrNum += 1
    if centersDelta < tol:
      break
  print 'itr num:',itrNum,'centers delta:',centersDelta
  return label, centers
  
if __name__ == '__main__':
  data = [
    [1,1,1,1],
    [1.1,1.1,1.1,1.1],
    [2,2,2,2],
    [2.2,2.2,2.2,2.2],
    [3,3,3,3],
    [3.1,3.1,3.1,3.1],
		[111,111,111,111]
  ]
  k = 4
  label, centers = cluster(data,k)
  for i,x in enumerate(data):
    print label[i],x
  for kv in centers.items():
    print kv