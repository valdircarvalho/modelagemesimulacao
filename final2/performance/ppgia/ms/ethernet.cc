#include <string.h>
#include <omnetpp.h>
#include <math.h>

#include "JobProcessor.h"

using namespace omnetpp;
using namespace ms;

class ethernet : public JobProcessor {
    private:
    int nextGate = 0;

    protected:
        virtual void process(Job *job) override;
};

Define_Module(ethernet);

void ethernet::process(Job *job) {

    if (nextGate == 0){
        EV << "Sending \"" << job->getFullName() <<
            "\" to Processor[" << nextGate << "]." << endl;
        send(job, "out", 0); //nextGate++);
    }

//    if (nextGate == gateSize("out")) {
//        nextGate = 0;
//    }
}



/*
class ethernet : public JobProcessor {
    private:
        double delay;

    protected:
        virtual void process(Job *job) override;

        virtual void handleMessage(cMessage *msg) override;
        virtual void sendMsg();
//        virtual void handleMessage2(cMessage *msg1) ;
//        virtual void sendMsg2();
};

Define_Module(ethernet);

void ethernet::process(Job *job) {
    delete job;

    delay = par("delay");
    sendMsg();
    //sendMsg2();
}


void ethernet::handleMessage(cMessage *msg) {
    EV << "Sent Internal \"" << msg->getFullName() << "\"" << endl;
    send(msg, "out", 0);
    sendMsg();
}

void ethernet::sendMsg() {
    SimTime time = simTime() + exponential(delay);
    std::string text = "Task " + time.str();
    Job *job = new Job(text.c_str());
    scheduleAt(time, job);
}
*/



/*
void ethernet::handleMessage2(cMessage *msg2) {
    EV << "Sent \"" << msg2->getFullName() << "\"" << endl;
    send(msg2, "out",1);
    sendMsg2();
}
void ethernet::sendMsg2() {
    SimTime time = simTime() + exponential(delay);
    std::string text = "Task " + time.str();
    Job *job2 = new Job(text.c_str());
    scheduleAt(time, job2);
}
*/




