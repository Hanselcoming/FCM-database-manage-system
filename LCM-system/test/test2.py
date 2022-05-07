import sqlite3
def open():
    db = sqlite3.connect('materials.db')
    return db

sql='select D50,D90,抗高温级别 from 全部信息表'
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

a=exec3(sql)
print(a)