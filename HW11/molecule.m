function molecule(molLength, molAngle, molRings)
    %initialize variables
    inX = 0;
    inY = 0;
    xs = [0];
    ys = [0];
    molAngle = cumsum(molAngle);
    hold on
    
    %generate all the x and y values by updating x and put them into a
    %vector of all xs and ys
    for i = 1:length(molLength)
        x = inX + molLength(i)*cosd(molAngle(i));
        y = inY + molLength(i)*sind(molAngle(i));
        xs = [xs x];
        ys = [ys y];
        inX = x;
        inY = y;
        plot(xs,ys,'k');
    end
    
    %find the centers
    [coord, radius] = findCenter([xs;ys]);
    
    %extract the coordinates of the hexagons that need rings
    toPlotX = coord(1,molRings);
    toPlotY = coord(2,molRings);
    
    %plot the circles
    r = length(toPlotX);
    for k = 1:r
        %calculate the radius
        specRad = 0.65 * radius(k);
        
        %get theta and plot
        theta = linspace(0,2*pi);
        plot(toPlotX(k) + specRad .* cos(theta), toPlotY(k) + specRad .* sin(theta),'b');
    end
    axis equal
    axis off
end