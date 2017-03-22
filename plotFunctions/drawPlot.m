function y = drawPlot(y, plotTitle, xLabel, labels, yLabel, legends )
    plot(y, '-x');
    title(plotTitle);
    xlabel(xLabel);
    xticklabels(labels);
    ylabel(yLabel);
    grid on;
    legend(legends, 'location', 'northwest');
end

