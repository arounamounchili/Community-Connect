#ifndef USER_H
#define USER_H

#include <QObject>

class User : public QObject
{
    Q_OBJECT
    Q_PROPERTY (QString email READ getEmail WRITE setEmail NOTIFY emailChanged);
    Q_PROPERTY (QString password READ getPassword WRITE setPassword NOTIFY passwordChanged);
public:
    explicit User(const QString &name, const QString &email, const QString &password, QObject *parent = nullptr);

    QString getEmail() const;
    QString getPassword() const;

    void setEmail(const QString &email);
    void setPassword(const QString &password);

signals:
    void emailChanged();
    void passwordChanged();

private:
    QString m_name;
    QString m_email;
    QString m_password;
};

#endif // USER_H
