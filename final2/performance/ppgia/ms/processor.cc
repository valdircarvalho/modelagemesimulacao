#include <string.h>
#include <omnetpp.h>
#include <math.h>

#include "JobProcessor.h"

using namespace omnetpp;
using namespace ms;

class processor : public JobProcessor {
    protected:
        virtual void process(Job *job) override;
};

Define_Module(processor);

void processor::process(Job *job) {
    delete job;
}


