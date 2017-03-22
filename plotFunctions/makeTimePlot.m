function y = makeTimePlot( codes,labels )
    %figure(2)
    y = zeros(length(codes(1).timeTotal), length(codes));
    for i=1:length(codes)
        code = codes(i);
        for j = 1:length(code.timeTotal)
            y(j,i) = code.timeTotal(j);
        end
    end
    
    y  = drawPlot(y, 'Time', 'Bit Error Probability',labels,'Seconds');
   
end

