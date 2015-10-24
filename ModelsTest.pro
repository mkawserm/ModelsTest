TEMPLATE = app

QT += qml quick widgets

SOURCES += main.cpp \
           person.cpp \
           assets/cpp/qqmlobjectlistmodel.cpp

HEADERS += person.h \
           assets/cpp/qqmlobjectlistmodel.h

RESOURCES += qml.qrc
