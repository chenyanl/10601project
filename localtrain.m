clear;
path = 'subset_CIFAR10/';
%digits 4;
traindata = [];
trainlabels = [];
for i = 1 : 5
    A = load([path,'small_data_batch_',num2str(i),'.mat']);
    traindata = [traindata;A.data];
    trainlabels = [trainlabels;A.labels];
end
Model = train(traindata,trainlabels);
save('Model.mat','Model');
