function [Model] = train(X,Y)
    data = [];
    for i = 1 : size(X,1)
        data = [data;naivehog(reshape(X(i,:),[32,32,3]))'];
        %disp(i);
    end
    
    Model = trainFisherwKernel(data,Y,@poly2);
    %Model = trainFisher(data,Y);
end

