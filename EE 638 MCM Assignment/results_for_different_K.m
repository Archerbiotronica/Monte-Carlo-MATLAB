function [mean_MLE,var_MLE] = results_for_different_K(N,A,K_vals)
%For chosen N and A, this function plots the 
%histogram along with actual normal PDF for different K

data_len = size(K_vals,2);
mean_MLE = zeros(data_len,1); var_MLE = zeros(data_len,1);

s = get(0, 'ScreenSize');
figure('Position', [0,0,s(3),s(4)]);

for index = 1:data_len
    K_this = K_vals(index);
    A_MLE = get_A_distribution(A,N,K_this);
    subplot(2,data_len/2,index)
    [mean_MLE_this,var_MLE_this] = show_results_single_run(A_MLE,N,A);
    mean_MLE(index) = mean_MLE_this; var_MLE(index) = var_MLE_this;   
end
end


