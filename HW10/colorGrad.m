function [output] = colorGrad(grad, rColor, cColor)
    fieldNames = fieldnames(grad)';
    [r,c] = size(grad);
    firstMask = strcmpi(rColor, fieldNames)';
    secondMask = strcmpi(cColor, fieldNames)';
    firstColor = fieldNames{firstMask};
    secondColor = fieldNames{secondMask};
    for i = 1:r
        a = [grad(i,:).(firstColor)];
        [~, idx1] = sort(a);
        grad(i,:) = grad(i,idx1);
    end
    for k = 1:c
        b = [grad(:,k).(secondColor)];
        [~, idx2] = sort(b);
        grad(:,k) = grad(idx2,k);
    end
    output = grad;
end