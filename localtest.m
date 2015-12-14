%this is the script for test your classifier locally, replace the path with
%your setup for the given dataset and enjoy~
clear;
path = 'subset_CIFAR10/';
digits 4;
A = [];
for i = 1 : 5
    A = [A,load([path,'small_data_batch_',num2str(i),'.mat'])];
end
accuracy = 0;
for i = 1 : 5
    traindata = [];
    trainlabels = [];
    disp(['Training Batch ',num2str(i)]);
    for j = 1 : 5
        if i ~= j
            traindata = [traindata;A(j).data];
            trainlabels = [trainlabels;A(j).labels];
        end
    end
    testdata = A(i).data;
    testlabels = A(i).labels;
    Model = train2(traindata,trainlabels);
    disp(['Testing Batch ',num2str(i)]);
    resultlabels = classify2(Model,testdata);
    disp(['Accuracy is ', num2str(sum(resultlabels == testlabels) / 1000)]);
    accuracy = accuracy + sum(resultlabels == testlabels);
end
accuracy = accuracy / 5000;
fprintf('Total accuracy = %f\n',accuracy);