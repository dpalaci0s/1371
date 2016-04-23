function [output] = structDisp(inp)
    [r, ~] = size(inp(1));
    [sR,sC] = size(inp);
    output = zeros(1,sC*50);
    vec = [];
    for i = 1:sR
        for j = 1:sC
            a = struct2charArr(inp(i,j));
            [tempR, tempC] = size(a);
            tempZ = zeros(tempR,50-tempC);
            if tempC > 50
                a = a(:,1:50);
            end
            mask = tempZ == 0;
            tempZ(mask) = ' ';
            vec = [vec a tempZ];
        end
        output = [output; vec];
        vec = [];
    end
    output = output(2:end,:)
end