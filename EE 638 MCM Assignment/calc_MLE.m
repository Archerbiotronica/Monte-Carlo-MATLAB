function A_MLE = calc_MLE(X)
%calculates the MLE from the given N length data X
N = size(X,1);
X_norm_by_N = dot(X,X)/N;
A_MLE = -0.5 + sqrt(X_norm_by_N + 0.25);
end