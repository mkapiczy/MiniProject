function y = makeTotalErrorsPlot( codes )

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
    bar(y)
    ylabel('Bits corrected pr. second');
    xticklabels({'0.1'; '0.2'; '0.3'; '0.4'; '0.5'})
    xlabel('Bit Error Probability');
end

