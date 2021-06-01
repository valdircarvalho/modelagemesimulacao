#include <string.h>
#include <omnetpp.h>
#include <math.h>

using namespace omnetpp;

class raspberry: public cSimpleModule {
    protected:
        virtual void handleMessage(cMessage *msg);
};

Define_Module(raspberry);

void raspberry::handleMessage(cMessage *msg) {
//    send(msg, msg->getArrivalGate());

    send(msg, "out");
//    send(msg, "gate", 1);

}
