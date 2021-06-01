package performance.ppgia.ms;

network Network
{
    parameters:
        int nclients = default(1);
        //@display("bgb=322,349");
        @display("bgb=406,453;bgi=maps/europe");
    //        @display("bgi=maps/europe");
    submodules:
        client[nclients]: Client {
            @display("p=300,165");
        }
        raspberry: Raspberry {
            //@display("p=176,209");
            @display("p=325,238");
        }
    connections:
        //As conexões só podem ser feitas na mesma hierarquia.
        //Não é possível conectar de client para um submodulo de cloud
        for i=0..(nclients-1) {
            client[i].out --> Ethernet100 --> raspberry.in++;
        }
}
