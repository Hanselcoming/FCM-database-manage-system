# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'basicinfo2_UI.ui'
#
# Created by: PyQt5 UI code generator 5.15.6
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import *
import sys

sys.path.append("/")  # 返回上层路径
from service import service


class Ui_MainWindow(QMainWindow):
    # 构造方法
    def __init__(self):
        super(Ui_MainWindow, self).__init__()
        self.setWindowFlags(QtCore.Qt.MSWindowsFixedSizeDialogHint)  # 只显示最小化和关闭按钮
        self.setupUi(self)  # 初始化窗体设置

    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(972, 605)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 3, 1, 3)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.inbh = QtWidgets.QLineEdit(self.centralwidget)
        self.inbh.setObjectName("inbh")
        self.gridLayout.addWidget(self.inbh, 1, 1, 1, 3)
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setObjectName("label_4")
        self.gridLayout.addWidget(self.label_4, 1, 4, 1, 1)
        self.in50min = QtWidgets.QLineEdit(self.centralwidget)
        self.in50min.setObjectName("in50min")
        self.gridLayout.addWidget(self.in50min, 1, 5, 1, 1)
        self.label_8 = QtWidgets.QLabel(self.centralwidget)
        self.label_8.setObjectName("label_8")
        self.gridLayout.addWidget(self.label_8, 1, 6, 1, 1)
        self.in50max = QtWidgets.QLineEdit(self.centralwidget)
        self.in50max.setObjectName("in50max")
        self.gridLayout.addWidget(self.in50max, 1, 7, 1, 1)
        self.label_9 = QtWidgets.QLabel(self.centralwidget)
        self.label_9.setObjectName("label_9")
        self.gridLayout.addWidget(self.label_9, 2, 5, 1, 1)
        self.label_10 = QtWidgets.QLabel(self.centralwidget)
        self.label_10.setObjectName("label_10")
        self.gridLayout.addWidget(self.label_10, 2, 7, 1, 1)
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setObjectName("label_6")
        self.gridLayout.addWidget(self.label_6, 3, 0, 1, 1)
        self.in90min = QtWidgets.QLineEdit(self.centralwidget)
        self.in90min.setObjectName("in90min")
        self.gridLayout.addWidget(self.in90min, 3, 1, 1, 1)
        self.label_16 = QtWidgets.QLabel(self.centralwidget)
        self.label_16.setObjectName("label_16")
        self.gridLayout.addWidget(self.label_16, 3, 2, 1, 1)
        self.in90max = QtWidgets.QLineEdit(self.centralwidget)
        self.in90max.setObjectName("in90max")
        self.gridLayout.addWidget(self.in90max, 3, 3, 1, 1)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.gridLayout.addWidget(self.label_3, 3, 4, 1, 1)
        self.injb = QtWidgets.QLineEdit(self.centralwidget)
        self.injb.setObjectName("injb")
        self.gridLayout.addWidget(self.injb, 3, 5, 1, 3)
        self.label_14 = QtWidgets.QLabel(self.centralwidget)
        self.label_14.setObjectName("label_14")
        self.gridLayout.addWidget(self.label_14, 4, 1, 1, 1)
        self.label_15 = QtWidgets.QLabel(self.centralwidget)
        self.label_15.setObjectName("label_15")
        self.gridLayout.addWidget(self.label_15, 4, 3, 1, 1)
        self.tableWidget = QtWidgets.QTableWidget(self.centralwidget)
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(4)
        self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        self.gridLayout.addWidget(self.tableWidget, 5, 0, 1, 8)
        self.gridLayout_2.addLayout(self.gridLayout, 0, 0, 1, 1)
        self.horizontalLayout = QtWidgets.QHBoxLayout()
        self.horizontalLayout.setObjectName("horizontalLayout")
        self.pushButton_go = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_go.setMaximumSize(QtCore.QSize(645, 16777215))
        self.pushButton_go.setObjectName("pushButton_go")
        self.horizontalLayout.addWidget(self.pushButton_go)
        self.pushButton_new = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_new.setObjectName("pushButton_new")
        self.horizontalLayout.addWidget(self.pushButton_new)
        self.pushButton_exit = QtWidgets.QPushButton(self.centralwidget)
        self.pushButton_exit.setMaximumSize(QtCore.QSize(645, 16777215))
        self.pushButton_exit.setObjectName("pushButton_exit")
        self.horizontalLayout.addWidget(self.pushButton_exit)
        self.gridLayout_2.addLayout(self.horizontalLayout, 1, 0, 1, 1)
        MainWindow.setCentralWidget(self.centralwidget)
        self.menubar = QtWidgets.QMenuBar(MainWindow)
        self.menubar.setGeometry(QtCore.QRect(0, 0, 972, 34))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        self.tableWidget.itemClicked.connect(self.getItem)  # 获取选中的单元格数据
        self.tableWidget.resizeColumnsToContents()  # 使列宽跟随内容改变
        self.tableWidget.resizeRowsToContents()  # 使行高度跟随内容改变
        self.tableWidget.setAlternatingRowColors(True)  # 使表格颜色交错显示

        self.tableWidget.horizontalHeader().setStretchLastSection(True)  # 设置最后一列自动填充容器
        self.tableWidget.horizontalHeader().setSectionResizeMode(QtWidgets.QHeaderView.Stretch)  # 设置表格的自动伸缩模式
        self.tableWidget.verticalHeader().setVisible(True)  # 隐藏垂直标题
        self.tableWidget.setEditTriggers(QtWidgets.QAbstractItemView.NoEditTriggers)  # 禁止编辑单元格
        self.tableWidget.sortItems(0, QtCore.Qt.AscendingOrder)  # 设置降序排序
        self.new()  # 窗体加载时显示所有数据
        self.pushButton_go.clicked.connect(self.Query)  # 绑定查询按钮的单击信号
        self.pushButton_new.clicked.connect(self.new)
        self.pushButton_exit.clicked.connect(MainWindow.close)  # 绑定退出按钮的单击信号
        self.pushButton_go.setShortcut('enter')  # 绑定快捷键
        # btn =self.pushbutton_go  # 按键
        # setShortcut('enter') = setShortcut('Enter')

    #
    #     # 查询材料信息，并显示在表格中
    # 查询基本信息，并显示在表格中
    def new(self):
        self.inbh.setText("")
        self.injb.setText("")
        self.in50min.setText("")
        self.in50max.setText("")
        self.in90min.setText("")
        self.in90max.setText("")

        self.tableWidget.setRowCount(0)  # 清空表格中的所有行
        result = service.query2("select * from v_abrasion")  # 调用服务类中的公共方法执行查询语句
        row = len(result)  # 取得记录个数，用于设置表格的行数
        self.tableWidget.setRowCount(row)  # 设置表格行数
        self.tableWidget.setColumnCount(4)  # 设置表格列数
        # 设置表格的标题名称
        for i in range(row):  # 遍历行
            for j in range(self.tableWidget.columnCount()):  # 遍历列
                data = QTableWidgetItem(str(result[i][j]))  # 转换后可插入表格
                self.tableWidget.setItem(i, j, data)  # 设置每个单元格的数据

    # 定义函数获取点击表格的内容到查询框
    def getItem(self, item):
        if item.column() == 0:
            self.select = item.text()  # 获取单击的单元格文本
            self.inbh.setText(self.select)  # 显示在编号文本框中

    def Query(self):
        try:
            self.tableWidget.setRowCount(0)  # 清空表格中的所有行
            inbh = self.inbh.text()  # 记录输入的编号

            in50min = self.in50min.text()  # 记录输入的cs最小值
            in50max = self.in50max.text()  # 记录输入的初始圆球度最大值
            in90min = self.in90min.text()  # 记录输入的yh最小值
            in90max = self.in90max.text()  # 记录输入的压后圆球度最大值

            injb = self.injb.text()  # 记录输入的名称



            # 获取所有材料基本信息
            if (inbh == "") and (injb == "") and (in50min == "") and (in50max == "") and (in90max == "") and (
                    in90min == ""):
                self.new()  # 在表格中显示最新数据
                QMessageBox.warning(None, '警告', '请必须输入至少一个查询条件，再进行查询操作！', QMessageBox.Ok)
            # elif (inmdmin >inmdmax) or (in50min >in50max) or (in90min >in90max):
            #     self.new()  # 在表格中显示最新数据
            #     QMessageBox.warning(None, '警告', '请检查所要查询的数据最小最大值！', QMessageBox.Ok)

            else:
                service.exec2("DROP TABLE  if exists t_temp")
                service.exec2("DROP TABLE  if exists t_temp_1")
                # service.exec2("DROP TABLE  if exists t_temp_2")
                # service.exec2("DROP TABLE  if exists t_temp_3")
                result1 = service.choose(in50min, in50max, '抗磨蚀能力表', 'D50降级')  # 按照初始圆球度查询
                a = service.exec2("alter table t_temp rename to t_temp_1")
                if a>0:
                    result2 = service.choose(in90min, in90max, 't_temp_1', 'D90降级')  # 按照压后圆球度查询
                    sql = "select * from t_temp where (编号 like '%" + inbh + "%') and (级别 like '%" + injb + "%') " # 按照编号或者级别模糊查询
                    result5 = service.query2(sql)
                    row = len(result5)  # 取得记录个数，用于设置表格的行数
                    if row == 0:
                        QMessageBox.information(None, '提示', '没有您要查询的数据，请缩小查询的范围或检查最大最小值！', QMessageBox.Ok)
                        self.inbh.setText("")
                        self.injb.setText("")
                        self.in50min.setText("")
                        self.in50max.setText("")
                        self.in90min.setText("")
                        self.in90max.setText("")
                        self.new()

                    else:
                        # service.exec2("drop table t_temp")
                        self.tableWidget.setRowCount(row)  # 设置表格行数
                        self.tableWidget.setColumnCount(4)  # 设置表格列数
                        # 设置表格的标题名称
                        for i in range(row):  # 遍历行
                            for j in range(self.tableWidget.columnCount()):  # 遍历列
                                data = QTableWidgetItem(str(result5[i][j]))  # 转换后可插入表格
                                self.tableWidget.setItem(i, j, data)  # 设置每个单元格的数据

                        QMessageBox.information(None, '提示', '查询成功!共有  ' + str(row) + '  记录符合查询条件', QMessageBox.Ok)
                        service.exec2("DROP TABLE  t_temp")
                        service.exec2("DROP TABLE  t_temp_1")
                        # service.exec2("DROP TABLE  t_temp_2")
                        # service.exec2("DROP TABLE  t_temp_3")


                # else:
                #     QMessageBox.information(None, '提示', '没有您ffffuck！', QMessageBox.Ok)

        except:
            QMessageBox.information(None, '提示', '信息查询失败！请输入正确的参数类型', QMessageBox.Ok)
            self.inbh.setText("")
            self.injb.setText("")
            self.in50min.setText("")
            self.in50max.setText("")
            self.in90min.setText("")
            self.in90max.setText("")
            self.new()

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "按抗磨蚀能力查询"))
        self.label.setText(_translate("MainWindow",
                                      "<html><head/><body><p align=\"center\"><span style=\" font-size:18pt;\">按抗磨蚀能力查询</span></p></body></html>"))
        self.label_2.setText(_translate("MainWindow",
                                        "<html><head/><body><p align=\"center\"><span style=\" font-size:10pt;\">编号</span></p></body></html>"))
        self.label_4.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">D50降级</p></body></html>"))
        self.label_8.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">～</p></body></html>"))
        self.label_9.setText(_translate("MainWindow", "最小值"))
        self.label_10.setText(_translate("MainWindow", "最大值"))
        self.label_6.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">D90降级</p></body></html>"))
        self.label_16.setText(_translate("MainWindow", "～"))
        self.label_3.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">级别</p></body></html>"))
        self.label_14.setText(_translate("MainWindow", "最小值"))
        self.label_15.setText(_translate("MainWindow", "最大值"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("MainWindow", "编号"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("MainWindow", "D50降级"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("MainWindow", "D90降级"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("MainWindow", "级别"))
        self.pushButton_go.setText(_translate("MainWindow", "查询"))
        self.pushButton_new.setText(_translate("MainWindow", "刷新"))
        self.pushButton_exit.setText(_translate("MainWindow", "退出"))



