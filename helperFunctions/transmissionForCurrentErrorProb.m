function transmissionForCurrentErrorProb(codes, bscErrorProb, burstErrorFlag, burstLength)
    data = randi([0 1],1000000,1);
    for code = codes
            tic
            errorRateFromSingleTransmission = transmit(data, code.trellisConv, bscErrorProb, code.costaintLength*5, burstErrorFlag, burstLength);
            code.addErrorRateForSingleErrorProbability(errorRateFromSingleTransmission);
            code.addTimeForSingleErrorProbability(toc);
    end
end

