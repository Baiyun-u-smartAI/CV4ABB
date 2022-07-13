/************************************************************/
/************************************************************/
/*****      Author: Zanerogl                            *****/
/*****      email:  z534214462@gmail.com                *****/
/*****      Blog:   https://zanerogl.github.io/         *****/
/*****      Github:https://github.com/zanerogl          *****/
/************************************************************/
/************************************************************/

#ifndef LOGIN_H
#define LOGIN_H

#include <QWidget>
#include "mainwindow.h"
#include <QImage>
#include <QPixmap>

namespace Ui {
class login;
}

class login : public QWidget
{
    Q_OBJECT

public:
    explicit login(QWidget *parent = nullptr);
    ~login();

    void UI_Init();

    void account_init();

private slots:
    void on_login_2_clicked();

    void on_register_2_clicked();

private:
    Ui::login *ui;

    MainWindow *window;

    QImage *image;    // 图片

    vector<QString> usernames;   // 账号
    vector<QString> passwords;   // 密码

};

#endif // LOGIN_H
