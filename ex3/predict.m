function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Input layer (a^1 = x, with ones prepended)
a_super_1 = [ones(m,1), X];

% z^2 = theta^1 * a^1
z_super_2 = Theta1 * a_super_1';

% a^2 = sigmoid(z^2)
a_super_2 = sigmoid(z_super_2);

% Add the bias (prepend ones)
a_super_2 = [ones(1,size(a_super_2,2)); a_super_2];

% z^3 = theta^2 * a^2
z_super_3 = Theta2 * a_super_2;

% a^3 = output = sigmoid(z^3)
h_out = sigmoid(z_super_3);

% Determine index of max, and pass as output
[~,p] = max(h_out',[],2);



% =========================================================================


end
