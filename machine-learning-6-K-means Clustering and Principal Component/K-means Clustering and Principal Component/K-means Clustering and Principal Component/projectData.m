function Z = projectData(X, U, K)
%PROJECTDATA Computes the reduced data representation when projecting only 
%on to the top k eigenvectors
%   Z = projectData(X, U, K) computes the projection of 
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
fprintf('%d %d\n',size(U)); %U[2*2]
fprintf('%d %d\n',size(X)); %X[50*2]
[m,n] = size(X);
Z = zeros(m, K);

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

for i = 1:m
x = X(i, :)'; %x[n*1]
    for k = 1:K
    projection_k = x' * U(:, k); % x'[1*n]*U[n*1] = SCALAR
    Z(i,k) = projection_k; % -> the X(i) projection on to the k-th eigenvector
    end
end

% =============================================================

end
