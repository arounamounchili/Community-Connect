#include "user.h"

User::User(const QString &name, const QString &email, const QString &password, QObject *parent)
    : QObject{parent},
      m_name(name),
      m_email(email),
      m_password(password)
{

}

QString User::getEmail() const
{
    return m_email;
}

QString User::getPassword() const
{
    return m_password;
}

void User::setEmail(const QString &email)
{
    m_email = email;
}

void User::setPassword(const QString &password)
{
    m_password = password;
}

