function [classes] = phase2Registration(current, toChange, registrar)
    %get the classes to add and drop
    add = toChange{2:end,1};
    drop = toChange{2:end,2};
    
    %get the registrar and current CRNs
    registrarCRNS = [registrar.CRN];
    currentCRNS = [current.CRN];
    
    %go through the courses to drop and drop each one
    for i = 1:length(drop);
        %update the current CRNs
        currentCRNS = [current.CRN];
        
        %create a mask to index out the course to drop
        dropMask = currentCRNS == drop(i);
        
        %drop class
        current = current(~dropMask);
    end
    
    %go through the courses to add and add each one
    for j = 1:length(add);
        %create mask of classes to add
        addMask = registrarCRNS == add(j);
        
        %append class to current classes
        current = [current registrar(addMask)];
    end
    
    %output
    classes = current;
end