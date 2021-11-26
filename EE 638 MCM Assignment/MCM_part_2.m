clear all; close all;

A = 9; %last two digits of roll number = 09

%% Check the variation of estimated mean and variance for different N
N_vals = round(logspace(0,3,10));

s = get(0, 'ScreenSize');
figure('Position', [0,0,s(3),s(4)]);

subplot(2,2,1);
K = 2e2;
results_for_different_N(N_vals,A,K);

subplot(2,2,2);
K = 3e2;
results_for_different_N(N_vals,A,K);

subplot(2,2,3);
K = 4e2;
results_for_different_N(N_vals,A,K);

subplot(2,2,4);
K = 5e2;
results_for_different_N(N_vals,A,K);



