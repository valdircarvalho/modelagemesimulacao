package performance.ppgia.ms;
package ppgia.ms;

simple processor
{
    parameters:
        @group(processor);
        @signal[dropped](type="long");
        @signal[busy](type="long");
        @signal[queueLength](type="long");
        @statistic[dropped](title="Dropped jobs";record=count,timeavg,vector;interpolationmode=none; unit=ms);
        @statistic[busy](title="Busy";record=timeavg,max,vector;interpolationmode=none; unit=ms);
        @statistic[queueLength](title="Queue length";record=mean,timeavg,max,vector;interpolationmode=none; unit=ms);
        
        
        @display("i=old/proc1");
        int queueCapacity = default(1);
//        double delay = default(0.217);
        double delay = default(0.35);
        gates:
        input in;
}
