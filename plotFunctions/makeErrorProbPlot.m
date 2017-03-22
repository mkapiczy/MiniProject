function y = makeErrorProbPlot( codes ,plotTitle, xLabel, labels, yLabel, legends)

y = zeros(length(codes(1).errorTotal), length(codes));
for i=1:length(codes)
    code = codes(i);
    for j = 1:length(code.errorTotal)
        y(j,i) = code.errorTotal(j);
    end
end

y  = drawPlot(y, plotTitle, xLabel ,labels, yLabel, legends);

end

