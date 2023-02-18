
#ifndef DRIVER
#define DRIVER

#include "framework.h"
#include <string>

using namespace std;

class Driver {
public:
    const string& getName();
    const int getID();

    void setName(const string& name);
    void setID(const int ID);

    bool driveCar();
    bool driveBus();
    bool flyAirplane();

private:
    string name;
    int ID;
};

#endif