function y = drawPlot(y, plotTitle, xLabel, labels, yLabel, legends )
    %Extract data from labels minus the last element 
    x = labels(1:end-1);
    
    plot(x, y, '-x');
    title(plotTitle);
    xlabel(xLabel);
    %xticklabels(labels);
    ylabel(yLabel);
    set(gca, 'XTick',x) 
    grid on;
    legend(legends, 'location', 'northwest');
end

