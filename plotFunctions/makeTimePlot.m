function y = makeTimePlot( codes )
    %figure(2)
    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            y(j,i) = code.timeTotal(j);
        end
    end
    x = 0.0:0.01:0.1;
    bar(x,y);
    ylabel('Time');
    xlabel('Bit Error Probability');
end

