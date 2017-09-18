% AW: Looks good 1/1.  
%InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 
x = 1; 
y = x + x

% Yu Ouyang: y = 2, b = 98. It is because x is a number 1, while a is a
% string/character '1'. The ASCII code for '1' is 49. Therefore, when add
% up two '1', you will get 49+49 numerically, and get 98 as a result.

%%
a = '1';
b = a+a
%% concatenation
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x]

a2 = [a a]

x2b = [x; x]

%Yu Ouyang: They are generating matrices called x2, a2, and x2b. Matrix x2 get two 1s
%for a row, while 'matrix' a2 get two character 1s add up to a string '11'.

%Yu Ouyang: x2 gets a 1x2 all-ones matrix, while x2b gets only 2x1 all-ones
%matrix. It is because the ";" in x2b indicates the two xs (i.e. two 1s) are in two
%separate rows.

%% = vs ==, isequal
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b
a = b;
a == b

%Yu Ouyang: Initially, a = 1 and b = 2. They are not equal. So first
%comparison statement a == b is False. Then a = b = 2 makes the second
%comparison statement become True. 

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b

% Yu Ouyang: MATLAB is going to look into each element in the two matrices
% and compare them one by one. Therefore, the results are 0==1 False, 2==2
% True, and 4==7 False. Thus, it outputs 0 1 0.

%explain why this gives an error:

b = [2, 3];
a == b
% Yu Ouyang: It is because a is a 1x3 matrix, while b is a 1x2 matrix.
% The two matrices are not of the same size. Therefore, they cannot compare
% to each other, causing the error.

%explain why this does not give an error
b = 2;
a == b 

% Yu Ouyang: a represents a matrix, while b represents a number. They are
% two different types of variables. Therefore, they are not comparable.
% This is why it gives an error.

%%  : operator 
%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20
[oneToTen, oneToTen+10]

% Yu Ouyang: oneToTen represents an array of the numbers from one to ten.
% Then oneToTen+10 represents an array of the numbers from 11 to 20, by
% adding 10 to each 1-10 numbers. Then the brackets make the two arrays of
% numbers together, which would be equivalent to 1:20.



% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
% Yu Ouyang:
2:2:20
oneToTen * 2

% 2. odd numbers from one to nineteen
% Yu Ouyang:
1:2:20
oneToTen * 2 - 1

% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
% Yu Ouyang:
20:-2:2
fliplr(oneToTen * 2)

% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)
% Yu Ouyang: It is because the fliplr function only flips elements in a 
% row in the left-right direction. Therefore, when oneToTen becomes its
% transpose, it would be no longer able to flip by the fliplr function. It
% should be flipped in a upside-down manner, which should use the flipud
% function. 


%% matrices, . operator

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

% m1 =             m2 = 
%      1  1            2  2
%      1  1            2  2

%explain the output of these two commands:
m1*m2
m1.*m2

% Yu Ouyang: In m1*m2, it is doing matrix product, getting a 2x2 matrix
% with all fours. In m1.*m2, it is using each elements in m1 to multiply
% with the matrix m2, getting a 2x2 matrix with all twos. 

%explain this command:
m2./m1

%Yu Ouyang: This is going to use each element in m2 devided by
%complimentary element in m1. That is to say for each column in each row is
%going to operate 2/1=2. Therefore, it outputs a 2x2 matrix with all 2s.

%extra credit: explain why this command gives a warning:
m2/m1

% Yu Ouyang: This is doing matrix devision. To do that, we could consider
% it as m2*m1^-1. And m1^-1 should not work out, because the determinant of
% m1 is 0, and thus m1^-1 would get infinite numbers. 

%% access particular elements and groups of elements

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)

% Yu Ouyang: It extracts the element of row 2 column 3 in the matrix. It
% would give the number in row 2 column 3.

rand_nums(2:4,3)

% Yu Ouyang: It takes the elements at column 3 from row 2 to row 4, which
% are 3 numbers in total, showing up vertically. 

rand_nums(1:2,3:4)

% Yu Ouyang: It would take the elements located from row 1 to row 2 an from
% column 3 to column 4. It would show up as a 2x2 matrix.

rand_nums(:,2)

% Yu Ouyang: It would take all elements in column 2 and output them in vertical order. 

rand_nums(1,:)

% Yu Ouyang: This would show all elements of the first row in the matrix
% rand_nums. 

rand_nums(:,[1 3 5])

% Yu Ouyang: This would show all the elements in column 1, 3, and 5, which
% makes a 5x3 matrix.
