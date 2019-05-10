function [I] = Simpson(x,y) 
% Martha Fasil Yilma 
% This is a code to caluclate the integral values using the simpson 1/3
% rule if even intervals and simpson 1/3 and trapezoidal rule if intervals
% are odd
% First start off by finding the lenghts of the inputed values

lenofy=length(y);
lenofx=length(x);

% generate l which is equally spaced increaments 
l=linspace(x(1),x(lenofx), lenofx);
% running error checks to make sure that the lengths of the inputed values
% for x and y are of equal length otherwise computations cannot be made 
if lenofy~= lenofx 
    error('X and Y not equal')
end
 % running error checks to make sure that all the spaces (intervals) are of
 % equal space with each other
if x== l
else
    error('equal space')
end

%calculating the step size by saying largest minus smallest point and then
%dividing it by total interval points 
H=((x(lenofx)-x(1))/(lenofx-1));

% using mod to find out if the intervals are an odd or even 
z= mod((lenofx-1),2);
if z~= 0 % odd # of intervals 
    %because it has an odd number of intervals we do simpsons 1/3 on the
    %first part of the intervals and trapezoidal rule for the last one
    %interval but first send the user a warning
    warning('Trapezoidal Rule is being used along with Simpsons 1/3')
    % separating the calculations to make it easier to use the formula and
    % avoid errors 
    a= y(1);
    b= (2*(sum(y(3:2:end-3))));
    c= (4*(sum(y(2:2:end-2))));
    d= y(end-1);
    e= y(end);
    % Calculating intergral using simpson 1/3 
   Simpint=(H/3)*(a+b+c+d);
   % Calculating intergral using Trapezoidal Rule 
   Trapint= ((1/2)*(H)*(d+e));
   %finding the Integral by adding the two up 
   I= Simpint + Trapint;
   %Displaying the integration value to user 
   disp(I)
else
    a= y(1);
    b= (2*sum(y(3:2:end-2)));
    c= (4*sum(y(2:2:end)));
    d= y(end);
  % calculating the integral using only the Simpson 1/3 method       
 I=(H/3)*(a+b+c+d);
   % displaying integration value to the user 
    disp(I)
end
end

