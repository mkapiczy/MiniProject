clear


%Settings
codes = setupCodesData();
burstErrorFlag = true;
burstLength = 5;
bscErrorProb = 0.05;
burstInterval = 2;
burstThreshold = 50;
numberOfIterations = 1;

xAxisValues = burstLength:burstInterval:burstThreshold;

%SIMULATION%%%%%%
while burstLength < burstThreshold
    
    for n = 1:numberOfIterations
        transmissionForCurrentErrorProb(codes, bscErrorProb, burstErrorFlag, burstLength);
    end
    
    for code = codes
        code.calculateTimeTotalForCurrentErrorProb();
        code.calculateErrorTotalForCurrentErrorProb();
    end
    
    burstLength = burstLength + burstInterval;
end

%Setup legends
legends = {};
i=1;
for code = codes
    legends{1,i} = code.name;
    i = i + 1;
end

[errorProbArray, timeArray, totalErrorArray, efficiencyArray] = createPlots(codes,  xAxisValues, legends);

[conv1Export, conv2Export, conv3Export] = exportData(errorProbArray, timeArray, totalErrorArray, efficiencyArray);
