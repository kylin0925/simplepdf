#-------------------------------------------------
#
# Project created by QtCreator 2013-11-23T21:42:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = simplepdf
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp

HEADERS  += mainwindow.h

FORMS    += mainwindow.ui

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../pkg_build/lib/release/ -lpoppler-qt5
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../pkg_build/lib/debug/ -lpoppler-qt5
else:unix: LIBS += -L$$PWD/../../pkg_build/lib/ -lpoppler-qt5

INCLUDEPATH += $$PWD/../../pkg_build/include/poppler/qt5
DEPENDPATH += $$PWD/../../pkg_build/include/poppler/qt5
