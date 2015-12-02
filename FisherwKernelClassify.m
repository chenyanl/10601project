function [ output_args ] = FisherwKernelClassify(Model,datas,kernel)
   M = kernel(datas,Model.traindata);
   datas = M* Model.alpha;
   dist = pdist2(datas,Model.Centers);
   [~,labels] = min(dist,[],2);
   labels = labels - ones(size(labels));
end

