%Recitation Notes
%Structures
%store heterogeneous data
% instead of storing by index, stores by field
% field names are case sensitive

%struc functions
    %getfield()
    %rmfield() - remove field. Creates a new structure, so must be
    %assigned.
    %setfield() - takes struct, field, and value. Still outputs a
    %structure.
    %fieldnames() - takes one input (a structure) outputs a cell with all
    %of the field names
    %isfield() - checks if field exists 
    %isstruct() - checks if parameter is a structure
    
    % in order to use a dot operator to point to a field using a varaiable,
    % you put parenthesis around the variable. So to get a field with its
    % name stored in variable 'first' :
                %struct.(first) 
                % not
                %struct.first
    % every structure in a structure array has to have the same fields
    
    %struct array, get all the values for names or something
        % {mascots.Name} 
        
   
    
