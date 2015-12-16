function [K] = rbf(data1,data2)
    K = pdist2(data1,data2) .^ 2;
    K = K .* -0.5;
    K = exp(K);
end