clear

%Settings
codes = setupCodesData();
burstErrorFlag = false;
burstLength = 8;
bscErrorProb = 0.01;
bscErrorInterval = 0.01;
bscErrorThreshold = 0.16;
numberOfIterations = 10;

xAxisValues = bscErrorProb:bscErrorInterval:bscErrorThreshold;

%SIMULATION%%%%%%
while bscErrorProb < bscErrorThreshold
    
    for n = 1:numberOfIterations
        transmissionForCurrentErrorProb(codes, bscErrorProb, burstErrorFlag, burstLength);
    end
    
    for code = codes
        code.calculateTimeTotalForCurrentErrorProb();
        code.calculateErrorTotalForCurrentErrorProb();
    end
    
    bscErrorProb = bscErrorProb + bscErrorInterval;
end


[errorProbArray, timeArray, totalErrorArray, efficiencyArray] = createPlots(codes, xAxisValues);

[conv1Export, conv2Export, conv3Export] = exportData(errorProbArray, timeArray, totalErrorArray, efficiencyArray);
