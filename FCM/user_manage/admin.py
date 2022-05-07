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
        self.tbAdmin = QtWidgets.QTableWidget(self.centralwidget)
        self.tbAdmin.setMinimumSize(QtCore.QSize(558, 322))
        self.tbAdmin.setMaximumSize(QtCore.QSize(558, 322))
        self.tbAdmin.setObjectName("tableWidget")
        self.tbAdmin.setColumnCount(2)
        self.tbAdmin.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tbAdmin.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tbAdmin.setHorizontalHeaderItem(1, item)
        self.gridLayout.addWidget(self.tbAdmin, 0, 0, 1, 4)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.adminname = QtWidgets.QLineEdit(self.centralwidget)
        self.adminname.setObjectName("adminname")
        self.gridLayout.addWidget(self.adminname, 1, 1, 1, 1)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.gridLayout.addWidget(self.label_3, 1, 2, 1, 1)
        self.adminpwd = QtWidgets.QLineEdit(self.centralwidget)
        self.adminpwd.setObjectName("adminpwd")
        self.gridLayout.addWidget(self.adminpwd, 1, 3, 1, 1)
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
        self.tbAdmin.setAlternatingRowColors(True)  # 使表格颜色交错显示
        self.tbAdmin.verticalHeader().setVisible(False)  # 隐藏垂直标题
        self.query() # 窗体加载时显示所有数据
        self.tbAdmin.itemClicked.connect(self.getItem) # 获取选中的单元格数据
        self.btnAdd.clicked.connect(self.add) # 绑定添加按钮的单击信号
        self.btnEdit.clicked.connect(self.edit) # 绑定修改按钮的单击信号
        self.btnDel.clicked.connect(self.delete) # 绑定删除按钮的单击信号

    # 查询管理员信息，并显示在表格中
    def query(self):
        self.tbAdmin.setRowCount(0) # 清空表格中的所有行
        result = service.query("select * from tb_admin") # 调用服务类中的公共方法执行查询语句
        row = len(result)  # 取得记录个数，用于设置表格的行数
        self.tbAdmin.setRowCount(row)  # 设置表格行数
        self.tbAdmin.setColumnCount(2)  # 设置表格列数
        # 设置表格的标题名称
        self.tbAdmin.setHorizontalHeaderLabels(['管理员名称', '管理员密码'])
        for i in range(row):  # 遍历行
            for j in range(self.tbAdmin.columnCount()):  # 遍历列
                data = QTableWidgetItem(str(result[i][j]))  # 转换后可插入表格
                self.tbAdmin.setItem(i, j, data) # 设置每个单元格的数据

    # 获取选中的表格内容
    def getItem(self, item):
        if item.column() == 0:  # 如果单击的是第一列
            self.select = item.text() # 获取单击的单元格文本
            self.adminname.setText(self.select) # 显示在管理员名称文本框中

    def getName(self, name):
        result = service.query("select * from tb_admin where adminname= %s", name)
        return len(result)

    # 添加管理员信息
    def add(self):
        try:
            adminname = self.adminname.text() # 记录输入的管理员名
            adminpwd = self.adminpwd.text() # 记录输入的管理员密码
            if adminname != "" and adminpwd != "": # 判断管理员名和密码不为空
                # 执行添加语句
                if self.getName(adminname) > 0:
                    QMessageBox.information(None, '提示', '您要添加的管理员已经存在，请重新输入！', QMessageBox.Ok)
                    self.adminname.setText("")
                    self.adminpwd.setText("")
                else:
                    result=service.exec("insert into tb_admin(adminname,adminpwd) values (%s,%s)",(adminname,adminpwd))
                    if result>0:  # 如果结果大于0，说明添加成功
                        self.query() # 在表格中显示最新数据
                        QMessageBox.information(None, '提示', '管理员信息添加成功！', QMessageBox.Ok)
                        self.adminname.setText("")
                        self.adminpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请检查输入的数据后，再执行相关操作！', QMessageBox.Ok)

    # 修改管理员信息
    def edit(self):
        try:
            adminname = self.adminname.text()  # 记录输入的管理员名
            adminpwd = self.adminpwd.text()  # 记录输入的管理员密码
            if adminname != "" and adminpwd != "":  # 判断管理员名和密码不为空
                # 执行添加语句
                result=service.exec("update tb_admin set adminpwd= %s where adminname=%s",(adminpwd,adminname))
                if result>0: # 如果结果大于0，说明修改成功
                    self.query() # 在表格中显示最新数据
                    QMessageBox.information(None, '提示', '管理员信息修改成功！', QMessageBox.Ok)
                    self.adminname.setText("")
                    self.adminpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请先选择要修改的数据！', QMessageBox.Ok)

    # 删除管理员信息
    def delete(self):
        try:
            adminname = self.adminname.text()  # 记录输入的管理员名
            if adminname!="": # 判断是否选择了要删除的数据
                # 执行删除操作
                result=service.exec("delete from tb_admin where adminname= %s",(adminname,))
                if result>0: # 如果结果大于0，说明删除成功
                    self.query() # 在表格中显示最新数据
                    QMessageBox.information(None, '提示', '信息删除成功！', QMessageBox.Ok)
                    self.adminname.setText("")
                    self.adminpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请先选择要删除的数据！', QMessageBox.Ok)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "材料系统管理员信息管理"))
        item = self.tbAdmin.horizontalHeaderItem(0)
        item.setText(_translate("MainWindow", "管理员名称"))
        item = self.tbAdmin.horizontalHeaderItem(1)
        item.setText(_translate("MainWindow", "管理员密码"))
        self.label_2.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">管理员名</p></body></html>"))
        self.label_3.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">密码</p></body></html>"))
        self.btnAdd.setText(_translate("MainWindow", "添加"))
        self.btnEdit.setText(_translate("MainWindow", "更新"))
        self.btnDel.setText(_translate("MainWindow", "删除"))
        self.btnExit.setText(_translate("MainWindow", "退出"))
