function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%
size(X);
size(centroids);
%X
%size(X)
%centroids
len=size(X,1);
for i=1:size(X,1),
  d1=(centroids(1,:)-X(i,:)).^2;%first elements
  dis1=sum(d1);
  idx(i)=1;%intialize
  for j=1:size(centroids,1),
     d2=(centroids(j,:)-X(i,:)).^2;
     dis2=sum(d2);
     if dis2 < dis1,
       dis1=dis2;
       idx(i)=j;
     endif
    
  endfor
endfor
idx;








% =============================================================

end

