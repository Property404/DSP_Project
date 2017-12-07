% File to show the convolusio between x and y
% As shown in task1 of the project sheet

% Givens
x = [2 -2 2 -2]

%  The Sheet says -.006, but that would lead to incorrect calculations
% I found this out after comparing y[n] found by substitution vs y[n] convolved (by hand, in frequency domain)
h = [-.06 .4 0 .7 0 .4 -.06]

y = conv(x, h)
% Length y should equal N+M-1, but we don't have to worry about that
% because MatLab
n = 0:1:length(y)-1

% Show the convolusion
stem(n, y)
