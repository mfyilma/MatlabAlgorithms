%% 1/26/19 Homework 1 question 8 
% a range of temperature values is inserted in fahrenheit, then converted to
% celcius. This is then used to calculate the density of the object at the
% different temperatures.
TF= (32:3.6:93.2);
TC= 5/9*(TF-32);
Density=5.5289e-8*TC.^3-8.5016e-6*TC.^2+6.5622e-5*TC+0.99987
%A graph of Density vs Temperature is needed so plot function used to plot
%graph. Grid on function adds grids to the plot. 
plot(TC,Density);
grid on
% a title is added and the x and y axis are labelled approprately
title('Temperature in Celcius vs Density')
ylabel('Density (g/cm^3)')
xlabel('Temperature in Celcius')
