clear all; close all;

A = 9; N = 1e3;
K = 1e4; %total number of times we estimate the MLE of A 

%% Check the variation of estimated mean and variance for different K
A_var_act = (A^2)/(N*(0.5+A));

K_vals = [1e2,5e2,1e3,5e3,1e4,5e4];
[mean_MLE,var_MLE] = results_for_different_K(N,A,K_vals);



