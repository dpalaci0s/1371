function [output, area] = proctorTest(filename, percentile)
    %read in file and extract the data
    [num, text, ~] = xlsread(filename);
    moistureVals = num(:,1)';
    dryWeightVals = num(:,2)';
    
    %calculate the y differential
    dy = diff(dryWeightVals);
    dx = diff(moistureVals);
    
    %find the midpoints of the x values
    derivX = (moistureVals(1:end-1) + moistureVals(2:end)) / 2;
    
    %calculate dy/dx, or the derivative of Y
    derivY = dy ./ dx;
    
    %find the value for which the derivative is 0
    x0 = interp1(derivY,derivX,0,'spline');
    
    %find the value of dryWeights v moistureVals at x0
    y0 = interp1(moistureVals,dryWeightVals,x0,'spline');
    
    %get units from the spreadsheet
    xUnits = text{1,1}(19:end-1);
    yUnits = text{1,2}(18:end-1);
    
    %format output
    output = sprintf('%0.3f %s, %0.3f %s', x0, xUnits, y0, yUnits);
    
    %create a mask of the values that are greater than or equal to the
    %percentile the value we are testing for
    mask = dryWeightVals >= y0*(percentile/100);
    
    %shift the axis down so that the values that we care about are the only
    %ones above the x axis
    dryWeightVals = dryWeightVals-(y0*(percentile/100));
    
    %use the previously created mask in order to find the bounds of
    %integration
    newyvals= dryWeightVals(mask);
    newxvals= moistureVals(mask);
    
    %use trapezoidal method of integration to find AuC
    area = round(trapz(newxvals,newyvals),3);
end