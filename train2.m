function [Model] = train2(X,Y)
    data = [];
    for i = 1 : size(X,1)
        data = [data;naivehog(reshape(X(i,:),[32,32,3]))'];
    end
    Model = trainSVM_QuadKernel(data,Y);
end