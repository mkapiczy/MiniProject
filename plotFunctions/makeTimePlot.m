function y = makeTimePlot( codes )
    %figure(2)
    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            y(j,i) = code.timeTotal(j);
        end
    end
    bar(y)
    ylabel('Time');
    xticklabels({'0.1'; '0.2'; '0.3'; '0.4'; '0.5'})
    xlabel('Bit Error Probability');
end

