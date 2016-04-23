function isMagic = checkMagic(square)
    [rows, columns] = size(square); %get rows and columns to make sure square
    columnSum = sum(sum(square))/length(sum(square)); %take the sum of columns
    rowSum = sum(sum(square,2))/length(sum(square,2)); %take the sum of rows
    diag1 = square(1:size(square,1)+1:end); %find the first diagonal
    diag2 = square(end:-size(square,1)-1:1); %find the second diagonal
    diag1Sum = sum(diag1); %sum across the diagonals
    diag2Sum = sum(diag2);
    isMagic = isequal(isequal(columnSum,rowSum), isequal(diag1Sum, diag2Sum)) & (rows==columns);
    %first, check that the sums are equal and that it is a square
    allNums = sort(square(:))';
    numDiff = diff(allNums);
    isUnique = ~any(numDiff==0);
    isMagic = isMagic & (isUnique);
    %check that the numbers are unique by seeing if the difference between
    %any two numbers is 0, meaning they are the same
end