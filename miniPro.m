clear


%Settings
codes = setupCodesData();
[burstErrorFlag, burstLength, bscErrorProb, numberOfIterations] = setupSimulationProperties();

%SIMULATION%%%%%%
while bscErrorProb < 0.51
    
    for n = 1:numberOfIterations
        transmissionForCurrentErrorProb(codes, bscErrorProb, burstErrorFlag, burstLength);
    end
    
    for code = codes
        code.calculateTimeTotalForCurrentErrorProb();
        code.calculateErrorTotalForCurrentErrorProb();
    end
    
    bscErrorProb = bscErrorProb + 0.1;
end

[errorProbArray, timeArray, totalErrorArray, efficiencyArray] = createPlots(codes);

[conv1Export, conv2Export, conv3Export] = exportData(errorProbArray, timeArray, totalErrorArray, efficiencyArray);
