function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu  = mean(X_norm)
sigma  = std(X_norm)


%X_norm = (X - mu) / sigma
%X_norm(:, 1) = ones(size(X,1),1)
%X_norm(:, 1) = (X_norm(:, 1) - mu(1)) / sigma(1)
%X_norm(:, 2) = (X_norm(:, 2) - mu(2)) / sigma(2)
%X_norm(:, 3) = (X_norm(:, 3) - mu(1:3)) / sigma(1:3)

%X_norm(:, 1) = (X(:, 1) - mu(1)) / std(X(:,1)) 
%X_norm(:, 2) = (X(:, 2) - mu(2)) / std(X(:,2)) 

X_norm(:, 1:size(X, 2)) = ((X(:, 1: size(X,2))) - mu) ./ std(X(:, 1:size(X, 2)))




%mu = mean(X)              % returns a row vector
%sigma = std(X)            % returns a row vector
%m = size(X, 1)            % returns the number of rows in X
%mu_matrix = ones(m, 1) * mu  
%sigma_matrix = ones(m, 1) * sigma
%X_norm = (X - mu_matrix) ./sigma_matrix
%pause(50)


% ============================================================

end
