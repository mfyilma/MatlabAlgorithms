%% 1/26/19 homework 1 question 10 
%Defined Z as going from -5 to 5
z=(-5:5);
%Formated long because answer is very small so to see al the digits in
%value long option allows that
format long
%Exponential calculation carried out separately and then combined to
%calculate frequency 
exppart= exp((-(z.^2))/2);
frequency= ((1/sqrt(2*pi))*exppart)
%Graph is plotted of z on Abscissa (x-axis) and Frequency on
%Ordinate(Y-axis)
% grid,title and axis labels added
plot(z,frequency)
grid on 
title('Z vs Frequency')
xlabel('z')
ylabel('Frequency')
