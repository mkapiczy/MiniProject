function y = makeErrorProbPlot( codes )
%MAKEERRORPROBPLOT Summary of this function goes here
%   Detailed explanation goes here
%figure(1)
y = zeros(length(codes(1).timeTotal), length(codes));
for i=1:length(codes)
    code = codes(i);
    for j = 1:length(code.errorTotal)
        y(j,i) = code.errorTotal(j);
    end
end
x = 0.1:0.1:0.5;
bar(y)
xticklabels({'0.1'; '0.2'; '0.3'; '0.4'; '0.5'})
xlabel('Bit Error Probability');
ylabel('Bit Error Rate');
end

