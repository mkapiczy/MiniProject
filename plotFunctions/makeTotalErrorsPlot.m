function y = makeTotalErrorsPlot( codes,labels )

    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            prob = j * 0.1;
            errorsGenerated = prob * 10^6; %On average
            errorsTotal = code.errorTotal(j) * 10^6;
            errorsCorrected = errorsGenerated - errorsTotal;
            y(j,i) = errorsCorrected;
        end
    end
 
    plot(y, '-x');
    title('Errors Corrected');
    xticklabels(labels);
    ylabel('Errors Corrected');
    xlabel('Bit Error Probability');
    grid on;
end

