package performance.ppgia.ms;

package ppgia.ms;

simple memory
{
    parameters:
        @group(memory);
        @signal[dropped](type="long");
        @signal[busy](type="long");
        @signal[queueLength](type="long");
        @statistic[dropped](title="Dropped jobs";record=count,timeavg,vector;interpolationmode=none; unit=ms);
        @statistic[busy](title="Busy";record=timeavg,max,vector;interpolationmode=none; unit=ms);
        @statistic[queueLength](title="Queue length";record=mean,timeavg,max,vector;interpolationmode=none; unit=ms);
        
        @display("i=device/memory");
        int queueCapacity = default(5);
        double delay = default(0.23);
    gates:
        input in;
}
