function [Model] = train1(X,Y)
    data = [];
    for i = 1 : size(X,1)
        data = [data;naivehog(reshape(X(i,:),[32,32,3]))'];
    end
    Model = trainSVM_linear_balanced(data,Y);
end