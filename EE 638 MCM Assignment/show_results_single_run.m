function [A_mean_est,A_var_est] = show_results_single_run(A_MLE,N,A)
%given the samples of A_MLE for chosen N and A, this function 
%calculates mean and variance of A_MLE distribution
%and plots the histogram along with actual normal PDF of A_MLE

K = size(A_MLE,1);
A_mean_est = mean(A_MLE); A_var_est = (std(A_MLE))^2;
A_var_act = (A^2)/(N*(0.5+A));

[f,x] = hist(A_MLE,K/10);
g = (1/sqrt(2*pi*A_var_act))* exp(-((x-A).^2)/(2*A_var_act));
bar(x,f/trapz(x,f)); hold on
plot(x, g, 'r', LineWidth = 2); hold off
xlabel("A_{MLE} Samples"); ylabel("PDF of A_{MLE}");
title("For N = "+num2str(N)+" and K = "+num2str(K));
end