function y = drawPlot(y, plotTitle, xLabel, labels, yLabel )
    plot(y, '-x');
    title(plotTitle);
    xlabel(xLabel);
    xticklabels(labels);
    ylabel(yLabel);
    grid on;
end

