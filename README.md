# 10601b project
A simple classification system that runs on CIFAR 10

FisherClassify.m: A simple multiclass fisher classifier

SVM_linearClassify.m: A simple linear multiclass SVM classifier

classify.m: A wrapper for classification algorithms

init.m: The initialization for VLfeat, configure the path before run this

localtest.m: The script for 5 fold test locally using given datasets, configure the path before run this

naivehog.m: A wrapper for simple hog feature extractor, using vl_hog

train.m: A wrapper for training algorithms

trainFisher.m: Training process for simple multiclass fisher classifier

trainSVM_linear.m: Training process for simple linear multiclass SVM classifier

trainSVM_linear_balanced.m: Training process for simple linear multiclass SVM classifier which uses tricks on C to enforce balance between data with positive and negative labels.

