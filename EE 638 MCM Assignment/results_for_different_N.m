function [mean_MLE,var_MLE] = results_for_different_N(N_vals,A,K)
%For chosen K and A, this function plots the sample mean and 
%sample variance of A_MLE along for different N

data_len = size(N_vals,2);
mean_MLE = zeros(data_len,1); var_MLE = zeros(data_len,1);

actual_var = (A^2)./((0.5+A)*N_vals);

for index = 1:data_len
    N_this = N_vals(index);
    A_MLE = get_A_distribution(A,N_this,K);
    A_mean_est = mean(A_MLE); A_var_est = (std(A_MLE))^2;
    mean_MLE(index) = A_mean_est; var_MLE(index) = A_var_est;   
end

semilogx(N_vals,mean_MLE,'ro-','LineWidth',2); grid on; hold on;
semilogx(N_vals, A*ones(data_len),'m--','LineWidth',1.5); 
legend("Mean of A_{MLE}","Actual Value A")

semilogx(N_vals,var_MLE,'bo-','LineWidth',2,'DisplayName',"Variance of A_{MLE}");
semilogx(N_vals, actual_var,'c--','LineWidth',1.5,'DisplayName',"I(A)^{-1}");
%legend("Mean of A_{MLE}","Actual Value A","Variance of A_{MLE}","I(A)^{-1}");

hold off;


xlabel("Number of Observations N(in log scale)");
ylabel("Mean and Variance Calculated from MCM");
title("Number of Samples of $$\hat{A}_{MLE}$$ used(K) = "+num2str(K),'Interpreter','Latex');

ylim([-2,12]);

end


