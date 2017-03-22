function y = makeErrorProbPlot( codes ,labels,legends)
y = zeros(length(codes(1).errorTotal), length(codes));
for i=1:length(codes)
    code = codes(i);
    for j = 1:length(code.errorTotal)
        y(j,i) = code.errorTotal(j);
    end
end

bar(y);
xlabel('Bit Error Probability');
xticklabels(labels);
ylabel('Bit Error Rate');
legend(legends, 'location', 'northwest');
end

