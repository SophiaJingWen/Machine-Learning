function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returns the new centroids by computing the means of the 
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);

IDX = zeros(m,K); %0-1 matrix to determine whether ith element of X belongs to Kth centroids



% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

                  % INPUT : X[m*2] ; idx[m*1] %

                  % OUTPUT : centroids[K*2] %

for k = 1:K
  for i = 1:m
    if idx(i) == k  %idx[m*1]
      IDX(i,k) = 1; %IDX[m*K] -> 0-1 matrix
    end
  end
end

SUMC = sum(IDX); %SUMC[1*K] -> number of x(i) that belongs to k th centroid

for k = 1:K
  centroids(k,:) = (X'*IDX(:,k))'./(SUMC(1,k));
              %(X'*IDX(:,k))' = ([2*m]*[m,1])' = [1,2]
              % SUMC(1,k) -> SCALAR
end








% =============================================================


end

