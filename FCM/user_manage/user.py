# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'user.ui'
#
# Created by: PyQt5 UI code generator 5.13.2
#
# WARNING! All changes made in this file will be lost!


from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import *
import sys
sys.path.append("../") # 返回上层路径
from service import service

class Ui_MainWindow(QMainWindow):
    # 构造方法
    def __init__(self):
        super(Ui_MainWindow, self).__init__()
        self.setWindowFlags(QtCore.Qt.MSWindowsFixedSizeDialogHint)  # 只显示最小化和关闭按钮
        self.setupUi(self) # 初始化窗体设置

    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(578, 472)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.tbUser = QtWidgets.QTableWidget(self.centralwidget)
        self.tbUser.setMinimumSize(QtCore.QSize(558, 322))
        self.tbUser.setMaximumSize(QtCore.QSize(558, 322))
        self.tbUser.setObjectName("tableWidget")
        self.tbUser.setColumnCount(2)
        self.tbUser.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tbUser.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tbUser.setHorizontalHeaderItem(1, item)
        self.gridLayout.addWidget(self.tbUser, 0, 0, 1, 4)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.username = QtWidgets.QLineEdit(self.centralwidget)
        self.username.setObjectName("username")
        self.gridLayout.addWidget(self.username, 1, 1, 1, 1)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.gridLayout.addWidget(self.label_3, 1, 2, 1, 1)
        self.userpwd = QtWidgets.QLineEdit(self.centralwidget)
        self.userpwd.setObjectName("userpwd")
        self.gridLayout.addWidget(self.userpwd, 1, 3, 1, 1)
        self.gridLayout_2.addLayout(self.gridLayout, 0, 0, 1, 1)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.btnAdd = QtWidgets.QPushButton(self.centralwidget)
        self.btnAdd.setMaximumSize(QtCore.QSize(645, 16777215))
        self.btnAdd.setObjectName("btnAdd")
        self.horizontalLayout.addWidget(self.btnAdd)
        self.btnEdit = QtWidgets.QPushButton(self.centralwidget)
        self.btnEdit.setMaximumSize(QtCore.QSize(645, 16777215))
        self.btnEdit.setObjectName("btnEdit")
        self.horizontalLayout.addWidget(self.btnEdit)
        self.btnDel = QtWidgets.QPushButton(self.centralwidget)
        self.btnDel.setMaximumSize(QtCore.QSize(645, 16777215))
        self.btnDel.setObjectName("btnDel")
        self.horizontalLayout.addWidget(self.btnDel)
        self.btnExit = QtWidgets.QPushButton(self.centralwidget)
        self.btnExit.setMaximumSize(QtCore.QSize(645, 16777215))
        self.btnExit.setObjectName("btnExit")
        self.horizontalLayout.addWidget(self.btnExit)
        self.gridLayout_2.addLayout(self.horizontalLayout, 1, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 578, 34))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        self.btnExit.clicked.connect(MainWindow.close) # 关闭窗口
        self.tbUser.setAlternatingRowColors(True)  # 使表格颜色交错显示
        self.tbUser.verticalHeader().setVisible(False)  # 隐藏垂直标题
        self.query() # 窗体加载时显示所有数据
        self.tbUser.itemClicked.connect(self.getItem) # 获取选中的单元格数据
        self.btnAdd.clicked.connect(self.add) # 绑定添加按钮的单击信号
        self.btnEdit.clicked.connect(self.edit) # 绑定修改按钮的单击信号
        self.btnDel.clicked.connect(self.delete) # 绑定删除按钮的单击信号

    # 查询用户信息，并显示在表格中
    def query(self):
        self.tbUser.setRowCount(0) # 清空表格中的所有行
        result = service.query("select * from tb_user") # 调用服务类中的公共方法执行查询语句
        row = len(result)  # 取得记录个数，用于设置表格的行数
        self.tbUser.setRowCount(row)  # 设置表格行数
        self.tbUser.setColumnCount(2)  # 设置表格列数
        # 设置表格的标题名称
        self.tbUser.setHorizontalHeaderLabels(['用户名称', '用户密码'])
        for i in range(row):  # 遍历行
            for j in range(self.tbUser.columnCount()):  # 遍历列
                data = QTableWidgetItem(str(result[i][j]))  # 转换后可插入表格
                self.tbUser.setItem(i, j, data) # 设置每个单元格的数据

    # 获取选中的表格内容
    def getItem(self, item):
        if item.column() == 0:  # 如果单击的是第一列
            self.select = item.text() # 获取单击的单元格文本
            self.username.setText(self.select) # 显示在用户名称文本框中

    def getName(self, name):
        result = service.query("select * from tb_user where username= %s", name)
        return len(result)

    # 添加用户信息
    def add(self):
        try:
            username = self.username.text() # 记录输入的用户名
            userpwd = self.userpwd.text() # 记录输入的用户密码
            if username != "" and userpwd != "": # 判断用户名和密码不为空
                # 执行添加语句
                if self.getName(username) > 0:
                    QMessageBox.information(None, '提示', '您要添加的用户已经存在，请重新输入！', QMessageBox.Ok)
                    self.username.setText("")
                    self.userpwd.setText("")
                else:
                    result=service.exec("insert into tb_user(username,userpwd) values (%s,%s)",(username,userpwd))
                    if result>0:  # 如果结果大于0，说明添加成功
                        self.query() # 在表格中显示最新数据
                        QMessageBox.information(None, '提示', '用户信息添加成功！', QMessageBox.Ok)
                        self.username.setText("")
                        self.userpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请检查输入的数据后，再执行相关操作！', QMessageBox.Ok)

    # 修改用户信息
    def edit(self):
        try:
            username = self.username.text()  # 记录输入的用户名
            userpwd = self.userpwd.text()  # 记录输入的用户密码
            if username != "" and userpwd != "":  # 判断用户名和密码不为空
                # 执行添加语句
                result=service.exec("update tb_user set userpwd= %s where username=%s",(userpwd,username))
                if result>0: # 如果结果大于0，说明修改成功
                    self.query() # 在表格中显示最新数据
                    QMessageBox.information(None, '提示', '用户信息修改成功！', QMessageBox.Ok)
                    self.username.setText("")
                    self.userpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请先选择要修改的数据！', QMessageBox.Ok)

    # 删除用户信息
    def delete(self):
        try:
            username = self.username.text()  # 记录输入的用户名
            if username!="": # 判断是否选择了要删除的数据
                # 执行删除操作
                result=service.exec("delete from tb_user where username= %s",(username,))
                if result>0: # 如果结果大于0，说明删除成功
                    self.query() # 在表格中显示最新数据
                    QMessageBox.information(None, '提示', '信息删除成功！', QMessageBox.Ok)
                    self.username.setText("")
                    self.userpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请先选择要删除的数据！', QMessageBox.Ok)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "材料系统用户信息管理"))
        item = self.tbUser.horizontalHeaderItem(0)
        item.setText(_translate("MainWindow", "用户名称"))
        item = self.tbUser.horizontalHeaderItem(1)
        item.setText(_translate("MainWindow", "用户密码"))
        self.label_2.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">用户名</p></body></html>"))
        self.label_3.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">密码</p></body></html>"))
        self.btnAdd.setText(_translate("MainWindow", "添加"))
        self.btnEdit.setText(_translate("MainWindow", "更新"))
        self.btnDel.setText(_translate("MainWindow", "删除"))
        self.btnExit.setText(_translate("MainWindow", "退出"))
