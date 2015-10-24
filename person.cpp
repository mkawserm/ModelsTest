#include "person.h"

Person::Person()
{
    m_name = "";
    m_age = -1;
}

Person::Person(QString name, int age)
{
    m_name = name;
    m_age = age;
}
