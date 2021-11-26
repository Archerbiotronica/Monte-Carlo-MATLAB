function A_MLE = get_A_distribution(A,N,K)
%generates a total of K valus of A_MLE for given A and N, 
%this K-length vector A_MLE gets the idea of distribution of A_MLE 
A_MLE = zeros(K,1);
for j = 1:K
    X = generate_data(A,N);
    A_MLE(j) =  calc_MLE(X); 
end
end