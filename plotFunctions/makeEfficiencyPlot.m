function y = makeEfficiencyPlot( codes,labels )

    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            prob = j * 0.1;
            errorsGenerated = prob * 10^6; %On average
            errorsTotal = code.errorTotal(j) * 10^6;
            errorsCorrected = errorsGenerated - errorsTotal;
            y(j,i) = errorsCorrected/code.timeTotal(j);
        end
    end
    
    y  = drawPlot(y, 'Bits corrected pr. second', 'Bit Error Probability',labels,'Bits corrected pr. second');
    
end

