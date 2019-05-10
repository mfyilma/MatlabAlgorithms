%% Finding the smallest positive real number 

value=0; 
number= 1;
while number >0
    number= number/2;
    value = value + 1;
end 

fprintf('The smallest postive real number that can  be used in matlab is: 2^-%.2d\n', value)