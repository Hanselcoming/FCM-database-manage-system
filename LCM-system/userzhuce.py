from PyQt5 import QtCore, QtGui, QtWidgets
from PyQt5.QtWidgets import QMessageBox, QMainWindow
import sys  # 导入sys模块
import main

from service import service



class Ui_MainWindow(QMainWindow):
    # 构造方法
    def __init__(self):
        super(Ui_MainWindow, self).__init__()
        self.setWindowFlags(QtCore.Qt.MSWindowsFixedSizeDialogHint)  # 只显示最小化和关闭按钮
        self.setupUi(self)  # 初始化窗体设置

    def setupUi(self, MainWindow):
        MainWindow.setObjectName("MainWindow")
        MainWindow.resize(360, 196)
        MainWindow.setMinimumSize(QtCore.QSize(360, 196))
        MainWindow.setMaximumSize(QtCore.QSize(360, 196))
        self.centralwidget = QtWidgets.QWidget(MainWindow)
        self.centralwidget.setObjectName("centralwidget")
        self.label = QtWidgets.QLabel(self.centralwidget)
        self.label.setGeometry(QtCore.QRect(0, 0, 361, 61))
        self.label.setStyleSheet("border-image: url(:/T1/images/login.jpg);")
        self.label.setText("")
        self.label.setPixmap(QtGui.QPixmap(":/T1/images/login.jpg"))
        self.label.setObjectName("label")
        self.label_2 = QtWidgets.QLabel(self.centralwidget)
        self.label_2.setGeometry(QtCore.QRect(70, 90, 61, 21))
        font = QtGui.QFont()
        font.setPointSize(11)
        self.label_2.setFont(font)
        self.label_2.setObjectName("label_2")
        self.editName = QtWidgets.QLineEdit(self.centralwidget)
        self.editName.setGeometry(QtCore.QRect(143, 90, 141, 20))
        self.editName.setObjectName("editName")
        self.editPwd = QtWidgets.QLineEdit(self.centralwidget)
        self.editPwd.setGeometry(QtCore.QRect(142, 120, 141, 20))
        self.editPwd.setEchoMode(QtWidgets.QLineEdit.Password)
        self.editPwd.setObjectName("editPwd")
        self.label_3 = QtWidgets.QLabel(self.centralwidget)
        self.label_3.setGeometry(QtCore.QRect(69, 120, 61, 21))
        font = QtGui.QFont()
        font.setPointSize(11)
        self.label_3.setFont(font)
        self.label_3.setObjectName("label_3")
        self.btnLogin = QtWidgets.QPushButton(self.centralwidget)
        self.btnLogin.setGeometry(QtCore.QRect(150, 150, 61, 23))
        self.btnLogin.setObjectName("btnLogin")
        self.btnExit = QtWidgets.QPushButton(self.centralwidget)
        self.btnExit.setGeometry(QtCore.QRect(220, 150, 61, 23))
        self.btnExit.setObjectName("btnExit")
        self.label_4 = QtWidgets.QLabel(self.centralwidget)
        self.label_4.setGeometry(QtCore.QRect(0, 0, 371, 61))
        self.label_4.setText("")
        self.label_4.setPixmap(QtGui.QPixmap("images/login.jpg"))
        self.label_4.setObjectName("label_4")
        MainWindow.setCentralWidget(self.centralwidget)

        self.retranslateUi(MainWindow)
        self.btnExit.clicked.connect(MainWindow.close)  # type: ignore
        QtCore.QMetaObject.connectSlotsByName(MainWindow)

        self.retranslateUi(MainWindow)
        self.btnExit.clicked.connect(MainWindow.close)  # 关闭登录窗体
        QtCore.QMetaObject.connectSlotsByName(MainWindow)
        # 输入密码后按回车键执行登录操作
        self.editPwd.editingFinished.connect(self.add)
        # 单击“登录”按钮执行登录操作
        self.btnLogin.clicked.connect(self.add)

    def getName(self, name):
        result = service.query("select * from tb_user where username= %s", name)
        return len(result)

    def add(self):
        try:
            username = self.editName.text() # 记录输入的用户名
            userpwd = self.editPwd.text() # 记录输入的用户密码
            if username != "" and userpwd != "": # 判断用户名和密码不为空
                # 执行添加语句
                if self.getName(username) > 0:
                    QMessageBox.information(None, '提示', '您要注册的用户已经存在，请换个名字！', QMessageBox.Ok)
                    # self.username.setText("")
                    # self.userpwd.setText("")
                else:
                    result=service.exec("insert into tb_user(username,userpwd) values (%s,%s)",(username,userpwd))
                    if result>0:  # 如果结果大于0，说明添加成功
                        # self.query() # 在表格中显示最新数据
                        QMessageBox.information(None, '提示', '用户注册成功！', QMessageBox.Ok)
                        # self.username.setText("")
                        # self.userpwd.setText("")
            else:
                QMessageBox.warning(None, '警告', '请输入数据后，再执行相关操作！', QMessageBox.Ok)
        except:
            QMessageBox.warning(None, '警告', '请检查输入的数据后，再执行相关操作！', QMessageBox.Ok)


    def retranslateUi(self, MainWindow):
        _translate = QtCore.QCoreApplication.translate
        MainWindow.setWindowTitle(_translate("MainWindow", "用户注册"))
        self.label.setWhatsThis(_translate("MainWindow",
                                           "<html><head/><body><p><img src=\":/T1/images/login.jpg\"/></p></body></html>"))
        self.label_2.setText(_translate("MainWindow", "用户名："))
        self.label_3.setText(_translate("MainWindow", "密  码："))
        self.btnLogin.setText(_translate("MainWindow", "注册"))
        self.btnExit.setText(_translate("MainWindow", "退出"))

