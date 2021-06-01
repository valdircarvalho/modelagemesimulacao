
package performance.ppgia.ms;


module Raspberry
{
    parameters:
        @display("i=device/device;bgb=365,331");
//        int nservers = default(6);
    gates:
        input in[];
    submodules:
        ethernet: ethernet {
            @display("p=62,68");
        }
        processor: processor {
            @display("p=88,204");
        }
//        memory: memory {
//           @display("p=264,204");
//        }
    connections:
        for i=0..(sizeof(in)-1) {
        	in[i] --> ethernet.in++;
        }
        ethernet.out++ --> Interno  --> processor.in;
//        ethernet.out++ --> Interno --> memory.in;
}
