function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%This function is a function that can find the root of a given function
%using the false position method
%output root is the root of the function that user inputs 
%output fx is the function evaluated at the root 
%output ea is the relative error that is calculated
%output iter shows how many iterations were performed
%input arg func is the function that the user will input 
%input arg xl is the lower bound of the guess 
%input arg xu is the upper bound of the guess 
%input arg es is the stopping criterion inputed by user, if input =1 then
%default is selected
%default is set to 0.0001%
% input arg maxiter is the max iterations the user wants, if input = 1 then
% default is selected
% default is set to 200


%using a switch nargin I am testing if my user has inputed the proper
%number of arguments for the code to run. It also defult sets the es  and
%maxiter values
fprintf('input 1 for es and maxiter if you want defult values of 0.0001 and 200 to be used\n')
switch nargin
    case 0 
        error("please input values for function")
    case 1
        error("Please input values for the xl,xu,es and maxiter")
    case 2
        error("Please input values for xu,es and maxiter")
    case 3
        error("Please input values for es and maxiter ( 1 for both if defult")
    case 4
       error("Please input value for maxiter(1 if defult)")
end
 
% checking if user selected default option
if es== 1
    es= 0.0001;
end

% checking if user selected default option
if maxiter== 1
    maxiter=200;
end 

%Converting the string that the user inputed into a function handle unsing
%the str2func. new variable funceq is used for the function handle

funceq= str2func(func);

%checking if the upper and lower bounds inputed braket root
if funceq(xl)<0 && funceq(xu)<0
    fprintf('the signs dont change so guesses do not braket root')
else 
   if funceq(xl)>0 && funceq(xu)>0
       fprintf('the signs dont change so guesses do not braket root')
   end 
end

% setting the root to the lower bound and making iter variable =0 
iter=0;
root= xl;
for i= 1:maxiter
    
    %oldapproximation is the function at the root useful to calculate ea
    oldapprox= funceq(root);
    iter=iter+1;
    
    %using formula given in class
    root =(xu -((funceq(xu)*(xl-xu))/(funceq(xl)-funceq(xu))));
   
    %the newapprox is the value of function at new root
    newapprox= funceq(root);
    
    % reassigning the lower and upper bound roots by checking if the
    % function at root and function at lower&upper bound have the same sign
    if (funceq(root)*funceq(xu)) > 0
        xu=root;
    else 
        xl=root;
    end 

    %ea is the absolute error which is calualted by new approx -old approx
    %over the new approx and * 100 to give in percentage form
    ea=(((newapprox-oldapprox)/newapprox)*100);
    
    %Checking to see if the ea is less than the stopping criterion. if it 
    %is less then the code will break and output whatever it has
    if ea<= es
        break
    end
    
end 
%the value for the function evaluated at the root 
fx= funceq(root);
if fx ~= 0
    fprintf('there may be an error here')
end 
% now displaying the vlaues to the user
fprintf('The iterations value (iter) is: %1d\n',iter)
fprintf('The absolute error (ea) is: %1d\n',ea)
fprintf('The function value at root (fx) is: %1d\n',fx)
fprintf('The root value is: %f\n',root)

end

