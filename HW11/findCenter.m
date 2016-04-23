%% findCenter Finds centers of hexagon rings given 2D points of molecule chain
% [centerLocations, hexagonSizes] = findCenter(allPoints)
%
% Inputs:
%     allPoints: 2xM array of all plotted points of complete molecule chain
%
% Outputs:
%     centerLocations: 2xM array of all found hexagon center locations
%     hexagonSizes: 1xM array of sizes (radii) all found hexagons
% 
% allPoints must be in the fomrat:
%   [x1, x2, x3, x4, x5, x6, x7, ...;
%    y1, y2, y3, y4, y5, y6, y7, ...] 
% representing a complete plotted molecule shape.
% 
% centerLocations will be in the same format (i.e. a 2xN array with x values in
% the first row and y values in the second.
% 
% To use this function, first compute ALL the plotted points of your molecule
% The points must be plotted in the same order as specified by the first two 
% inputs of the "molecule" function and problem description. Then run these 
% points through this function to generate the circle center points.