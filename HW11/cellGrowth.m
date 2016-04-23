function cellGrowth(cellCount, time)
    %define the ranges of the axes
    xmin = min(time)*1.05;
    xmax = max(time)*1.05;
    ymin = min(cellCount)*1.05;
    
    %find the values for the mean and max value
    cellMean_val = mean(cellCount);
    cellMax_val = max(cellCount);
    ymax = cellMax_val*1.05;
    
    %toggle hold
    hold on
    
    %convert the mean and max into plottable vectors because they are
    %currently single values
    cellMean = ones(1,length(cellCount))*cellMean_val;
    cellMax = ones(1,length(cellCount))*cellMax_val;
    
    %plot the counts, mean, and max
    plot(time, cellCount,'.r');
    plot(time, cellMean, '-.b');
    plot(time, cellMax, '--m');
    
    %plot formatting
    axis square;
    title('Cell Growth vs Time');
    xlabel('Time');
    ylabel('# Cells');
    axis([xmin,xmax,ymin,ymax]);
end