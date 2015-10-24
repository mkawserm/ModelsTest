#include <QQmlApplicationEngine>
#include <QApplication>
#include <QQmlContext>
#include <QtQml>

#include "assets/cpp/qqmlobjectlistmodel.h"
#include "person.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    qmlRegisterType<Person>("person",1,0,"Person");

    QQmlObjectListModel<Person> *persons = new QQmlObjectListModel<Person>(0, "name","age");
    persons->append(new Person("Bruno",20));
    persons->append(new Person("Livia",22));
    persons->append(new Person("Amanda",22));

    QQmlApplicationEngine engine;
    QQmlContext *ctx = engine.rootContext();
    ctx->setContextProperty("_persons", persons);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
