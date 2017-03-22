function [ errorProbArray,timeArray , totalErrorArray, efficiencyArray ] = createPlots( codes,xAxisValues)

    labels = strings(length(xAxisValues));
    for i = 1:length(xAxisValues)
        s = num2str(xAxisValues(i),2);
        labels(i) = s;
    end
    
    %Setup legends
    legends = {};
    i=1;
    for code = codes
        legends{1,i} = code.name;
        i = i + 1;
    end
    
    figure(1)
    %subplot(2,1,1)
    %Different error prob plot
    errorProbArray = makeErrorProbPlot(codes,'BER', 'Bit Error Probability', labels, 'Bit Error Rate', legends);

    figure(2)
    %subplot(2,1,2)
    %Time plot
    timeArray = makeTimePlot(codes,'Time','Bit Error Probability', labels,'Seconds', legends);


    figure(3)
    %subplot(2,1,1)
    %Errors total plot

    totalErrorArray = makeTotalErrorsPlot(codes,'Errors Corrected','Bit Error Probability',labels,'Errors Corrected', legends);

    
    figure(4)
    %subplot(2,1,2)
    %Efficiency plot
    efficiencyArray = makeEfficiencyPlot(codes,'Bits corrected pr. second','Bit Error Probability',labels,'Bits corrected pr. second', legends);
end

