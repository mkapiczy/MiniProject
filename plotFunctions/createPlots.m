function [ errorProbArray,timeArray , totalErrorArray, efficiencyArray ] = createPlots( codes,xAxisValues )

    labels = strings(length(xAxisValues));
    for i = 1:length(xAxisValues)
        s = num2str(xAxisValues(i),2);
        labels(i) = s;
    end
    
    figure(1)
    %subplot(2,1,1)
    %Different error prob plot
    errorProbArray = makeErrorProbPlot(codes,labels);
    
    figure(2)
    %subplot(2,1,2)
    %Time plot
    timeArray = makeTimePlot(codes,labels);

    figure(3)
    %subplot(2,1,1)
    %Errors total plot
    totalErrorArray = makeTotalErrorsPlot(codes,labels);
    
    figure(4)
    %subplot(2,1,2)
    %Efficiency plot
    efficiencyArray = makeEfficiencyPlot(codes,labels);
end

