# -*- coding: utf-8 -*-

# Form implementation generated from reading ui file 'temper.ui'
#
# Created by: PyQt5 UI code generator 5.15.6
#
# WARNING: Any manual changes made to this file will be lost when pyuic5 is
# run again.  Do not edit this file unless you know what you are doing.


from PyQt5 import QtCore, QtGui, QtWidgets


class Ui_MainWindow(object):
    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(1028, 665)
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.gridLayout_2 = QtWidgets.QGridLayout(self.centralwidget)
        self.gridLayout_2.setObjectName("gridLayout_2")
        self.gridLayout = QtWidgets.QGridLayout()
        self.gridLayout.setObjectName("gridLayout")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setObjectName("label")
        self.gridLayout.addWidget(self.label, 0, 4, 1, 4)
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setObjectName("label_2")
        self.gridLayout.addWidget(self.label_2, 1, 0, 1, 1)
        self.inbh = QtWidgets.QLineEdit(self.centralwidget)
        self.inbh.setObjectName("inbh")
        self.gridLayout.addWidget(self.inbh, 1, 1, 1, 3)
        self.label_7 = QtWidgets.QLabel(self.centralwidget)
        self.label_7.setObjectName("label_7")
        self.gridLayout.addWidget(self.label_7, 1, 4, 1, 1)
        self.ingzavg_min = QtWidgets.QLineEdit(self.centralwidget)
        self.ingzavg_min.setObjectName("ingzavg_min")
        self.gridLayout.addWidget(self.ingzavg_min, 1, 5, 1, 1)
        self.label_19 = QtWidgets.QLabel(self.centralwidget)
        self.label_19.setObjectName("label_19")
        self.gridLayout.addWidget(self.label_19, 1, 6, 1, 1)
        self.ingzavg_max = QtWidgets.QLineEdit(self.centralwidget)
        self.ingzavg_max.setObjectName("ingzavg_max")
        self.gridLayout.addWidget(self.ingzavg_max, 1, 7, 1, 1)
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setObjectName("label_4")
        self.gridLayout.addWidget(self.label_4, 1, 8, 1, 1)
        self.inyjavg_min = QtWidgets.QLineEdit(self.centralwidget)
        self.inyjavg_min.setObjectName("inyjavg_min")
        self.gridLayout.addWidget(self.inyjavg_min, 1, 9, 1, 1)
        self.label_8 = QtWidgets.QLabel(self.centralwidget)
        self.label_8.setObjectName("label_8")
        self.gridLayout.addWidget(self.label_8, 1, 10, 1, 1)
        self.inyjavg_max = QtWidgets.QLineEdit(self.centralwidget)
        self.inyjavg_max.setObjectName("inyjavg_max")
        self.gridLayout.addWidget(self.inyjavg_max, 1, 11, 1, 1)
        self.label_17 = QtWidgets.QLabel(self.centralwidget)
        self.label_17.setObjectName("label_17")
        self.gridLayout.addWidget(self.label_17, 2, 5, 1, 1)
        self.label_18 = QtWidgets.QLabel(self.centralwidget)
        self.label_18.setObjectName("label_18")
        self.gridLayout.addWidget(self.label_18, 2, 7, 1, 1)
        self.label_9 = QtWidgets.QLabel(self.centralwidget)
        self.label_9.setObjectName("label_9")
        self.gridLayout.addWidget(self.label_9, 2, 9, 1, 1)
        self.label_10 = QtWidgets.QLabel(self.centralwidget)
        self.label_10.setObjectName("label_10")
        self.gridLayout.addWidget(self.label_10, 2, 11, 1, 1)
        self.label_5 = QtWidgets.QLabel(self.centralwidget)
        self.label_5.setObjectName("label_5")
        self.gridLayout.addWidget(self.label_5, 3, 0, 1, 1)
        self.ingzmax_min = QtWidgets.QLineEdit(self.centralwidget)
        self.ingzmax_min.setObjectName("ingzmax_min")
        self.gridLayout.addWidget(self.ingzmax_min, 3, 1, 1, 1)
        self.label_13 = QtWidgets.QLabel(self.centralwidget)
        self.label_13.setObjectName("label_13")
        self.gridLayout.addWidget(self.label_13, 3, 2, 1, 1)
        self.ingzmax_max = QtWidgets.QLineEdit(self.centralwidget)
        self.ingzmax_max.setObjectName("ingzmax_max")
        self.gridLayout.addWidget(self.ingzmax_max, 3, 3, 1, 1)
        self.label_6 = QtWidgets.QLabel(self.centralwidget)
        self.label_6.setObjectName("label_6")
        self.gridLayout.addWidget(self.label_6, 3, 4, 1, 1)
        self.injymax_min = QtWidgets.QLineEdit(self.centralwidget)
        self.injymax_min.setObjectName("injymax_min")
        self.gridLayout.addWidget(self.injymax_min, 3, 5, 1, 1)
        self.label_16 = QtWidgets.QLabel(self.centralwidget)
        self.label_16.setObjectName("label_16")
        self.gridLayout.addWidget(self.label_16, 3, 6, 1, 1)
        self.inyjmax_max = QtWidgets.QLineEdit(self.centralwidget)
        self.inyjmax_max.setObjectName("inyjmax_max")
        self.gridLayout.addWidget(self.inyjmax_max, 3, 7, 1, 1)
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setObjectName("label_3")
        self.gridLayout.addWidget(self.label_3, 3, 8, 1, 1)
        self.injb = QtWidgets.QLineEdit(self.centralwidget)
        self.injb.setObjectName("injb")
        self.gridLayout.addWidget(self.injb, 3, 9, 1, 3)
        self.label_11 = QtWidgets.QLabel(self.centralwidget)
        self.label_11.setObjectName("label_11")
        self.gridLayout.addWidget(self.label_11, 4, 1, 1, 1)
        self.label_12 = QtWidgets.QLabel(self.centralwidget)
        self.label_12.setObjectName("label_12")
        self.gridLayout.addWidget(self.label_12, 4, 3, 1, 1)
        self.label_14 = QtWidgets.QLabel(self.centralwidget)
        self.label_14.setObjectName("label_14")
        self.gridLayout.addWidget(self.label_14, 4, 5, 1, 1)
        self.label_15 = QtWidgets.QLabel(self.centralwidget)
        self.label_15.setObjectName("label_15")
        self.gridLayout.addWidget(self.label_15, 4, 7, 1, 1)
        self.tableWidget = QtWidgets.QTableWidget(self.centralwidget)
        self.tableWidget.setObjectName("tableWidget")
        self.tableWidget.setColumnCount(6)
        self.tableWidget.setRowCount(0)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(0, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(1, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(2, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(3, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(4, item)
        item = QtWidgets.QTableWidgetItem()
        self.tableWidget.setHorizontalHeaderItem(5, item)
        self.gridLayout.addWidget(self.tableWidget, 5, 0, 1, 12)
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
        self.menubar.setGeometry(QtCore.QRect(0, 0, 1028, 34))
        self.menubar.setObjectName("menubar")
        MainWindow.setMenuBar(self.menubar)
        self.statusbar = QtWidgets.QStatusBar(MainWindow)
        self.statusbar.setObjectName("statusbar")
        MainWindow.setStatusBar(self.statusbar)

        self.retranslateUi(MainWindow)
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "MainWindow"))
        self.label.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:18pt;\">按抗高温老化性质查询</span></p></body></html>"))
        self.label_2.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\"><span style=\" font-size:10pt;\">编号</span></p></body></html>"))
        self.label_7.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">老化D50降级</p></body></html>"))
        self.label_19.setText(_translate("MainWindow", "～"))
        self.label_4.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">老化D90降级</p></body></html>"))
        self.label_8.setText(_translate("MainWindow", "～"))
        self.label_17.setText(_translate("MainWindow", "最小值"))
        self.label_18.setText(_translate("MainWindow", "最大值"))
        self.label_9.setText(_translate("MainWindow", "最小值"))
        self.label_10.setText(_translate("MainWindow", "最大值"))
        self.label_5.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">老化压后D50降级</p></body></html>"))
        self.label_13.setText(_translate("MainWindow", "～"))
        self.label_6.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">老化压后D90降级</p></body></html>"))
        self.label_16.setText(_translate("MainWindow", "～"))
        self.label_3.setText(_translate("MainWindow", "<html><head/><body><p align=\"center\">级别</p></body></html>"))
        self.label_11.setText(_translate("MainWindow", "最小值"))
        self.label_12.setText(_translate("MainWindow", "最大值"))
        self.label_14.setText(_translate("MainWindow", "最小值"))
        self.label_15.setText(_translate("MainWindow", "最大值"))
        item = self.tableWidget.horizontalHeaderItem(0)
        item.setText(_translate("MainWindow", "编号"))
        item = self.tableWidget.horizontalHeaderItem(1)
        item.setText(_translate("MainWindow", "老化D50降级"))
        item = self.tableWidget.horizontalHeaderItem(2)
        item.setText(_translate("MainWindow", "老化D90降级"))
        item = self.tableWidget.horizontalHeaderItem(3)
        item.setText(_translate("MainWindow", "老化压后D50降级"))
        item = self.tableWidget.horizontalHeaderItem(4)
        item.setText(_translate("MainWindow", "老化压后D90降级"))
        item = self.tableWidget.horizontalHeaderItem(5)
        item.setText(_translate("MainWindow", "级别"))
        self.pushButton_go.setText(_translate("MainWindow", "查询"))
        self.pushButton_new.setText(_translate("MainWindow", "刷新"))
        self.pushButton_exit.setText(_translate("MainWindow", "退出"))
