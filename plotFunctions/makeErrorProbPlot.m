function y = makeErrorProbPlot( codes ,labels)
y = zeros(length(codes(1).errorTotal), length(codes));
for i=1:length(codes)
    code = codes(i);
    for j = 1:length(code.errorTotal)
        y(j,i) = code.errorTotal(j);
    end
end

y  = drawPlot(y, 'BER', 'Bit Error Probability',labels, 'Bit Error Rate');
end

