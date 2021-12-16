#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQuickView>
#include <QQmlContext>
#include <QDebug>

#include "user.h"


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    User currentUser = User ("Arouna", "arouna@gmail.com", "root");

    engine.rootContext()->setContextProperty("currentUser", &currentUser);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}



/*
 * #include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QDebug>
#include <QQmlContext>

#include "user.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    // add global c++ object to the QML context as a property
    User *currentUser = new User ("Arouna", "arouna@gmail.com", "root");
    // the object will be available in QML with name "currentUser"
    engine.rootContext()->setContextProperty("currentUser", currentUser);


    qDebug() << "email:" << currentUser->getEmail();

    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}

*/
