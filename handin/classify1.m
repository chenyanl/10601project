function Y = classify(X,Model)
	if nargin < 2
		load('Model.mat','Model');
	end
    data = [];
    for i = 1 : size(X,1)
        data = [data;naivehog(reshape(X(i,:),[32,32,3]))'];
    end
    Y = SVM_linearClassify(Model,data);
end