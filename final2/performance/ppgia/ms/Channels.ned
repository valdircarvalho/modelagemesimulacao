package performance.ppgia.ms;
  

channel Ethernet100 extends ned.DatarateChannel {
//    datarate = 100Mbps;
//    delay = 100us;
    delay = 0us;
}

channel Interno extends ned.DatarateChannel {
    //datarate = 100Mbps;
    delay = 0us;
}