function [determined] = airfoilz(angles, lifts, toDetermine)
    %toggle hold
    hold on
    
    %plot the data that we already have
    plot(angles, lifts, '*b');
    
    %fit a second degree polynomial off of that data
    secPoly = polyfit(angles,lifts,2);
    
    %find the min and max of the angles
    angleMin = min(angles);
    angleMax = max(angles);
    
    %create an evenly spaced vector between those values
    vec = angleMin:angleMax;
    
    %create the plot using the evenly spaced vector of angles and polyval
    %to evaluate the polynomial at those locations
    plot(vec, polyval(secPoly,vec),'-k');
    
    %output the values at the given angles using spline interpolation
    determined = round(interp1(vec, polyval(secPoly,vec),toDetermine,'spline'),3);
end