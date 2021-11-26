function X = generate_data(A,N)
%generates a vector data X of Gaussian distribution, 
%mean = A, variance = A and length = N
X = normrnd(A,sqrt(A),N,1);
end