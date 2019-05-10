%% 1/26/19 homework 1 question 9 
%Define Varriables 
R= 60;
L=9;
C=0.00005;
Qini=10;
% defined t as from 0 to 0.8 in increments of 0.1
t=(0:0.1:0.8)
%I separated the functions to make typing out the equation easier. 
thepower= 
firstpart= (Qini.^thepower);
%I then combined the equations to find the charge value
qt=((firstpart).*(cos(sqrt((1/(L*C))-(((R)/(2*L))^2).*t))))
%I then ploted the graph with grids and with the time on the x-axis and charge on the
%Y-axis 
plot(t,qt)
grid on
%The title and labels are added to the graph
title('Charge vs time')
xlabel('Time')
ylabel('Charge on Capacitor')












grid on
title('Charge vs Time')
xlabel('Time')
ylabel('Charge on Capacitor')
