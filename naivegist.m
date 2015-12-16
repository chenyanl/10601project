function [ feat ] = naivegist(I,param)
%NAIVEGIST Summary of this function goes here
%   Detailed explanation goes here
if nargin < 2
    param.imageSize = [32 32]; % it works also with non-square images
    param.orientationsPerScale = [8 8 8 8];
    param.numberBlocks = 4;
    param.fc_prefilt = 4;
end
[feat,~] = LMgist(I,'',param);
feat = feat';
end

