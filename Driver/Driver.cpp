#include "Driver.h"

const string& Driver::getName()
{
    return this->name;
}

const int Driver::getID()
{
    return this->ID;
}

void Driver::setName(const string& name)
{
    this->name = name;
}

void Driver::setID(const int ID)
{
    this->ID = ID;
}

bool Driver::driveCar()
{
    // This driver can drive a car.
    return true;
}

bool Driver::flyAirplane()
{
    // This driver cannot fly an airplane.
    return false;
}
