#include <string.h>
#include <omnetpp.h>
#include <math.h>
#include "Job.h"

using namespace omnetpp;
using namespace ms;

//const int teste=1 ;

class Client : public cSimpleModule {
    private:
        double delay;
    protected:
        virtual void initialize() override;
        virtual void handleMessage(cMessage *msg) override;
        virtual void sendMsg();
        virtual void finish();
};

Define_Module(Client);

void Client::initialize() {
    delay = par("delay");
    sendMsg();
}

void Client::handleMessage(cMessage *msg) {
    EV << "Sent \"" << msg->getFullName() << "\"" << endl;
    send(msg, "out");
    sendMsg();
}

void Client::sendMsg() {
    SimTime time = simTime() + delay;
//    SimTime time = simTime() + uniform(0.2, 0.4); //delay = 0.3
    std::string text = "Task " + time.str();
    Job *job = new Job(text.c_str());
    scheduleAt(time, job);
}



void Client::finish()
{
    // This function is called by OMNeT++ at the end of the simulation.
    EV << "##### FINISHED #####     " << endl;
//    EV << "Dropped:     " << queueLength.mean > processor << endl;

}




