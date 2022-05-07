# -*- coding: utf-8 -*-
# 开发时间   ：2022/3/20  8:40
# 文件名称   ：service.py
# 开发工具   ：PyCharm

import pymysql  # 导入操作MySQL数据库的模块
from PyQt5.QtWidgets import QMessageBox
import sqlite3

userName = ""  # 记录用户名
adminName = ""  # 记录管理员名


# 打开数据库连接
def open():
    db = pymysql.connect(
        host='localhost',
        user='root',
        passwd='root1234',
        db='materials',
        port=3306,
        charset='utf8'
    )
    return db  # 返回连接对象

#
# def open():
#     db = sqlite3.connect('materials.db')
#     return db



# 执行数据库的增、删、改操作
def exec(sql, values):
    db = open()  # 连接数据库
    cursor = db.cursor()  # 使用cursor()方法获取操作游标
    try:
        cursor.execute(sql, values)  # 执行增删改的SQL语句
        db.commit()  # 提交数据
        return 1  # 执行成功
    except:
        db.rollback()  # 发生错误时回滚
        return 0  # 执行失败
    finally:
        cursor.close()  # 关闭游标
        db.close()  # 关闭数据库连接



def exec2(sql):
    db = open()  # 连接数据库
    cursor = db.cursor()  # 使用cursor()方法获取操作游标
    try:
        cursor.execute(sql)  # 执行增删改的SQL语句
        db.commit()  # 提交数据
        return 1  # 执行成功
    except:
        db.rollback()  # 发生错误时回滚
        return 0  # 执行失败
    finally:
        cursor.close()  # 关闭游标
        db.close()  # 关闭数据库连接



def exec3(sql):
    db = open()  # 连接数据库
    cursor = db.cursor()  # 使用cursor()方法获取操作游标
    try:
        cursor.execute(sql)  # 执行增删改的SQL语句
        db.commit()  # 提交数据
        results = cursor.fetchall()
        return results  # 执行成功
    except:
        db.rollback()  # 发生错误时回滚
        return 0  # 执行失败
    finally:
        cursor.close()  # 关闭游标
        db.close()  # 关闭数据库连接


# 带参数的精确查询
def query(sql, *keys):
    db = open()  # 连接数据库
    cursor = db.cursor()  # 使用cursor()方法获取操作游标
    cursor.execute(sql, keys)  # 执行查询SQL语句
    result = cursor.fetchall()  # 记录查询结果
    cursor.close()  # 关闭游标
    db.close()  # 关闭数据库连接
    return result  # 返回查询结果


# 不带参数的模糊查询
def query2(sql):
    db = open()  # 连接数据库
    cursor = db.cursor()  # 使用cursor()方法获取操作游标
    cursor.execute(sql)  # 执行查询SQL语句
    result = cursor.fetchall()  # 记录查询结果
    cursor.close()  # 关闭游标
    db.close()  # 关闭数据库连接
    return result  # 返回查询结果


def getName(name):
    result = query("select * from 基本信息表 where 编号= %s", name)
    return len(result)


def choose(mmin, mmax, table, ziduan):
    if mmin == '' and mmax == '':
        sql = "create table t_temp select * from " + table + ""
        query2(sql)
        sql2 = "select * from t_temp"
        result = query2(sql2)
        return result
    elif mmin == '' and mmax != '':  # 进行小于某值查询
        sql = "create table t_temp select * from " + table + " where " + ziduan + "<=" + mmax + ""
        query2(sql)
        sql2 = "select * from t_temp"
        result = query2(sql2)
        return result
    elif mmin != '' and mmax == '':  # 进行大于某值查询
        sql = "create table t_temp select * from " + table + " where " + ziduan + ">=" + mmin + ""
        query2(sql)
        sql2 = "select * from t_temp"
        result = query2(sql2)
        return result
        # 按照最大最小值查询
    elif mmin != '' and mmax != '':
        sql = "create table t_temp select  *  from " + table + " where " + ziduan + ">=" + mmin + "  and  " + ziduan + "<=" + mmax + ""
        query2(sql)
        sql2 = "select * from t_temp"
        result = query2(sql2)
        return result


def returnnull(a):
    if a == '' or a == ' ' or a == '   ' or a == '空' or a == 'null' or a == None:
        return
    else:
        return a


def returnnone(a):
    if a == None:
        return ''
    else:
        return a
