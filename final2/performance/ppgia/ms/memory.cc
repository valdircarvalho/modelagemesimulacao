#include <string.h>
#include <omnetpp.h>
#include <math.h>

#include "JobProcessor.h"

using namespace omnetpp;
using namespace ms;

class memory : public JobProcessor {
    protected:
        virtual void process(Job *job) override;
};

Define_Module(memory);

void memory::process(Job *job) {
    delete job;
}
