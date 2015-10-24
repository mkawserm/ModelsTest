#ifndef PERSON_H
#define PERSON_H

#include <QObject>
#include <QString>
#include <QDebug>

#include "assets/cpp/qqmlhelpers.h"

class Person : public QObject
{
    Q_OBJECT
    QML_WRITABLE_PROPERTY(QString,name)
    QML_WRITABLE_PROPERTY(int , age)

public:
    Person();
    Person(QString name, int age);
};

#endif // PERSON_H
