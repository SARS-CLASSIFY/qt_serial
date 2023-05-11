QT       += core gui serialport bluetooth network printsupport
android {
    QT += androidextras
}


greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    adaptivestackedwidget.cpp \
    asynccrc.cpp \
    connection.cpp \
    controlitem.cpp \
    ctrltab.cpp \
    datatab.cpp \
    devicetab.cpp \
    filetab.cpp \
    filexceiver.cpp \
    legenditemdialog.cpp \
    main.cpp \
    mainwindow.cpp \
    mysettings.cpp \
    serialpinout.cpp \
    settingstab.cpp \
    util.cpp

HEADERS += \
    adaptivestackedwidget.h \
    asynccrc.h \
    connection.h \
    controlitem.h \
    ctrltab.h \
    datatab.h \
    devicetab.h \
    filetab.h \
    filexceiver.h \
    legenditemdialog.h \
    mainwindow.h \
    mysettings.h \
    serialpinout.h \
    settingstab.h \
    util.h

FORMS += \
    ui/settingstab.ui \
    ui/filetab.ui \
    ui/legenditemdialog.ui \
    ui/serialpinout.ui \
    ui/devicetab.ui \
    ui/datatab.ui \
    ui/ctrltab.ui \
    ui/controlitem.ui \
    ui/mainwindow.ui \
    ui/plottab.ui

TRANSLATIONS += \
    i18n/SerialTest_zh_CN.ts

RC_ICONS = icon/icon.ico

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

# Remember to change version in AndroidManifest.xml
VERSION = 0.2.2
QMAKE_TARGET_PRODUCT = "SerialTest"
QMAKE_TARGET_DESCRIPTION = "SerialTest"
QMAKE_TARGET_COMPANY = "wh201906"

DISTFILES += \
    android/AndroidManifest.xml \
    android/build.gradle \
    android/gradle.properties \
    android/gradle/wrapper/gradle-wrapper.jar \
    android/gradle/wrapper/gradle-wrapper.properties \
    android/gradlew \
    android/gradlew.bat \
    android/java/priv/wh201906/serialtest/MainActivity.java \
    android/res/values/libs.xml \
    android/res/values/strings.xml \
    android/res/values-zh-rCN/strings.xml

ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android

RESOURCES += \
    i18n/language.qrc \
    qdarkstyle/dark/darkstyle.qrc \
    qdarkstyle/light/lightstyle.qrc


