function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])

%   X [300*2]; centroids [3*2]

% Set K
m = size(X,1); %number of X examples
K = size(centroids, 1); %number of centroids

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);
%l = zeros(K,n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for i = 1 : m
  for j = 1 : K 
    L(j) = sum( (X(i,:)-centroids(j,:)).^2 , 2) ;
  end
[MIN,a] = min(L);
idx(i) = a;
end  

%fprintf(' %d \n', size(X));
%fprintf(' %d \n', size(centroids));





% =============================================================

end

