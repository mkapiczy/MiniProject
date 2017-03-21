function [ errorProbArray,timeArray , totalErrorArray, efficiencyArray ] = createPlots( codes )
    figure(1)
    subplot(2,1,1)
    %Different error prob plot
    errorProbArray = makeErrorProbPlot(codes);

    subplot(2,1,2)
    %Time plot
    timeArray = makeTimePlot(codes);

    figure(2)
    subplot(2,1,1)
    %Errors total plot
    totalErrorArray = makeTotalErrorsPlot(codes);

    subplot(2,1,2)
    %Efficiency plot
    efficiencyArray = makeEfficiencyPlot(codes);
end

