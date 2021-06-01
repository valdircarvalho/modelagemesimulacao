

package performance.ppgia.ms;

simple Client {
    parameters:
        @display("i=device/laptop");

// UTILIZAR PARA 1 CLIENTE
        double delay = default(1.0);
// 		double delay = default(0.5);
//		  double delay = default(0.4);
//		  double delay = default(0.3);
//		  double delay = default(0.2);

//UTILIZAR PARA DOIS CLIENTES
//		double delay = default(0.5); //carga de 1.0
//		double delay = default(0.25); //carga de 0.5

                            gates:
        output out;
}