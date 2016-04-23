function [output] = ugaMath(func, value)
%given some functions, evaluates it at a given value while ignoring order
%of operations
    
    %identify what the parameter is
    first = find(func=='(' | func == ')');
    var_name = func(first(1)+1:first(2)-1);
    
    %replace variable (in function) with given value
    func = strrep(func, var_name, num2str(value));
    
    %isolate the actual function
    equalsPos = find(func == '=');
    actualFunc = func(equalsPos+1:end);
    
    %find where the operators are in the function
    maskOp = (actualFunc == '+' |actualFunc == '-' | actualFunc== '^' |...
        actualFunc == '*' |actualFunc == '/');
    operators = actualFunc(maskOp);
    
    %extract the numbers as a string, and then convert it to a vector of
    %doubles
    nums = actualFunc(~maskOp);
    nums = sscanf(nums, '%f')';
    
    %evaluate the function by iterating through the operators and choosing
    %two numbers at a time. Once it has been evaluated, the second number
    %is replaced by the answer so that subsequent operation is done to the
    %running total of the function rather than each number individually
    tempAnswer = 0;
    for ndx = 1:length(operators)
        if(operators(ndx) == '+')
            tempAnswer = nums(ndx) + nums(ndx+1);
            nums(ndx+1) = tempAnswer;
        elseif(operators(ndx) == '-')
            tempAnswer = nums(ndx) - nums(ndx+1);
            nums(ndx+1) = tempAnswer;
        elseif(operators(ndx) == '*')
            tempAnswer = nums(ndx) .* nums(ndx+1);
            nums(ndx+1) = tempAnswer;
        elseif(operators(ndx) == '/')
            tempAnswer = nums(ndx) ./ nums(ndx+1);
            nums(ndx+1) = tempAnswer;
       elseif(operators(ndx) == '^')
            tempAnswer = nums(ndx)^nums(ndx+1);
            nums(ndx+1) = tempAnswer;
        end
    end
    output = round(tempAnswer,2);
end