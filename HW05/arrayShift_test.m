function [output] = arrayShift(A, rowShift, colShift)
rts = rowShift(1:end-1);
d2l = size(A,2);
rsf = mod(rowShift(end), d2l);
cts = colShift(1:end-1);
csf = mod(colShift(end),d2l);
d1l = size(A,1)
A(rts, :) = [A(rts,d2l-rsf+1:end) A(rts,(1:d2l-rsf))];
tempVec = A(:,cts)'
tempVec = [tempVec(:,d1l-csf+1:end) tempVec(:,(1:d1l-csf))];
tempVec = tempVec'
tempVec
A(:,cts) = tempVec;
output = A;
end