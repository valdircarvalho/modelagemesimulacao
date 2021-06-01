package performance.ppgia.ms;

simple ethernet {
    parameters:
        @group(ethernet);
        @signal[dropped](type="long");
        @signal[busy](type="long");
        @signal[queueLength](type="long");
        @statistic[dropped](title="Dropped jobs";record=count,timeavg,vector;interpolationmode=none; unit=ms);
        @statistic[busy](title="Busy";record=timeavg,max,vector;interpolationmode=none; unit=ms);
        @statistic[queueLength](title="Queue length";record=mean,timeavg,max,vector;interpolationmode=none; unit=ms);
        
        @display("i=device/device");
        int queueCapacity = default(0);
        double delay = default(0);
    gates:
	    input in[];    
	    output out[];    
}
