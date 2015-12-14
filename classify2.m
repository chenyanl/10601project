function Y = classify2(Model,X)
    data = [];
    for i = 1 : size(X,1)
        data = [data;naivehog(reshape(X(i,:),[32,32,3]))'];
    end
    Y = SVM_QuadKernelClassify(Model,data);
end