function y = makeTimePlot( codes,labels,legends )
    %figure(2)
    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            y(j,i) = code.timeTotal(j);
        end
    end
    
    bar(y);
    xticklabels(labels);
    ylabel('Time');
    xlabel('Bit Error Probability');
    legend(legends, 'location', 'northwest');
end

