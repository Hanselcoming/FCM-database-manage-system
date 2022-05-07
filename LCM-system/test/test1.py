# coding:utf-8
import subprocess
import redis
import pymysql

from service import service

r= redis.Redis(host="127.0.0.1", port=6379, db=0, decode_responses=True)
# db=service.open()
# cursor =db.cursor()
a=r.hmget('LCM-B1','20%','40%','60%','形状')
print(a)
# 方法二，使用redis库封装的pipeline方法
# def insert_into_redis(table):
#     sql="select COLUMN_NAME from information_schema.COLUMNS where table_name ='"+table+"' and table_schema = 'testdb'"
#     ziduan = service.exec3(sql)
#     results = service.exec3('SELECT * FROM ' + table)
#     p = redis_con.pipeline()
#     for record in results:
#
#         for i in range(len(record[0])):
#             c = service.returnnone(record[i])
#             p.hsetnx(record[0][0], ziduan[i], c)
#
#     replies = p.execute()
#     print(replies)
#
#
# insert_into_redis('基本信息表')
