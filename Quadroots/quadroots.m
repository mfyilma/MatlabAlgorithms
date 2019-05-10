% Loops 2 
% Created on: 5 November 2018
% Created by: Martha Fasil Yilma 
% This program determines if a quadratic equation has any roots and
% displays the roots if any. Gets the terms from input from the user. 
% /n is escape character to create new line 
% the percentage is a place holder 

% use fprintf('\n%.3f,%.3f\n'root1,root2)



a = input('Enter a: ');
b = input('Enter b: ');
c = input('Enter c: ');

D = ((b^2) -(4*a*c));
if D>0 
    disp('Equation has 2 roots')
    root1= ((-b)+(D^0.5))/(2*a)
    root2= ((-b)-(D^0.5))/(2*a)
     fprintf('\n%.3f,%.3f\n',root1,root2)
elseif D<0
      disp('Equation has no roots')
else 
       disp('Equation has 1 root')
     root=((-1*b)/(2*a))
      fprintf('\n%.3f,%.3f\n',root)
  
end 

     
     
