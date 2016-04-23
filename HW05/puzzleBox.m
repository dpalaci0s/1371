function [output] = puzzleBox(A, rowShift, colShift)
    rts = rowShift(1:end-1); %extract the rows you need to shift
    d2l = size(A,2); %find the size in the second dimension
    d1l = size(A,1); %find the size in the first dimension
    rsf = mod(rowShift(end), d2l); %find the shift factor, mod it so easy to work with
    cts = colShift(1:end-1); %find the  columns to shift
    csf = mod(colShift(end),d1l); %find the shift factor, mod for reasons above
    A(rts, :) = [A(rts,d2l-rsf+1:end) A(rts,(1:d2l-rsf))]; %apply the shift
    tempVec = A(:,cts)'; %take the columns and transpose them to make the shift easier
    tempVec = [tempVec(:,d1l-csf+1:end) tempVec(:,(1:d1l-csf))]; %use the same shift
    %because we transposed the columns
    tempVec = tempVec';%transpose the columns back
    A(:,cts) = tempVec; %replace the columns with the shifted ones
    output = A;
end