function centdist = alldist(centers)
%
% This code is provided by Charles Elkan:
% http://cseweb.ucsd.edu/~elkan/fastkmeans.html
%
% output: matrix of all pairwise distances
% input: data points (centers)

k = size(centers,1);
centdist = zeros(k,k);
for j = 1:k
    centdist(1:j-1,j) = calcdist(centers(1:j-1,:),centers(j,:));
end
centdist = centdist+centdist';
