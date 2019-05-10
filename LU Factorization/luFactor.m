function [ L, U,P ] = luFactor(A)
%creating function to find the LU factorization of matrix A
[n,m] = size(A);
% A is n by n
%creating a test, to make sure that the size of A is indeed square matrix
if n~=m 
    error('% Matrix is not n*n');
end 
n = size(A);
%using the eye fucntion to create a matrix with diagonal 1's for L and P 
%while at the same time assigning the variable U the values of A
L = eye(n);
P = eye(n);
U = A;
 
for q=1:size(A)
%carrying out forward elimination to get rid of variables 
    if U(q,q)==0
        maxi = max(abs(U(q:n,1)));
        for k=1:n
           if maxi == abs(U(k,q))
               placeholder = U(1,:);
    
               U(:,1) = U(:,k);
              U(:,k)=  placeholder;
               
               
               placeholder = P(1,:);
               P(1,:) = P(k,:);
               P(k,:) = placeholder;
               
               
           end
        end
 
    end
 
    if U(q,q)~=1
        placeholder = eye(n);
        placeholder(q,q)=U(q,q);
        L = L * placeholder;
        U(:,q) = U(:,q)/U(q,q); 
%making the values of the pivot 1 not other numbers 
    end
    if q~=size(A)
       lengthofU= length(U);
        for j=q+1:lengthofU
            placeholder = eye(n);
            placeholder(j,q) = U(j,q);
            L = (L*placeholder);
            U(j,:) = U(j,:)-U(j,q)*U(q,:);
 
        end
    end
 
end
end
