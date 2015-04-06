function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

Exam1_score = X(:,1);
Exam2_score = X(:,2);
Exam1_accept = Exam1_score(y==1);
Exam1_reject = Exam1_score(y==0);
Exam2_accept = Exam2_score(y==1);
Exam2_reject = Exam2_score(y==0);

scatter(Exam1_accept,Exam2_accept,'k+')
hold on
scatter(Exam1_reject,Exam2_reject,'bo')




% =========================================================================



hold off;

end
