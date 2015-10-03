#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <poppler-qt5.h>
#include <QtWidgets/QApplication>
#include <QtWidgets/QDesktopWidget>
MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    Poppler::Document *doc = Poppler::Document::load("/Users/kylin/1.pdf");
    doc->setRenderHint(Poppler::Document::TextAntialiasing,true);
    doc->setRenderHint(Poppler::Document::Antialiasing,true);
    QImage image = doc->page(0)->renderToImage(
                               QApplication::desktop()->physicalDpiX()*1.0,
                               QApplication::desktop()->physicalDpiY()*1.0);
    ui->label->resize(image.size());
    ui->label->setPixmap(QPixmap::fromImage(image));

}

MainWindow::~MainWindow()
{
    delete ui;
}
