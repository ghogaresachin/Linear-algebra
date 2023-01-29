clc;clear all
n=7;
for i=1:n;
    for j=1:n;
        A(i,j)=1/(i+j-1);
    end;
end;
disp('This is special matrix')
disp(A)
fprintf('\n\t Determinant of the matrix=%f',det(A))
fprintf('\n\t Size of the given matrix=%d%x%d',size(A));
fprintf('\n\t Rank of the given matrix=%d',rank(A));

clc;clear all
for i=1:10;
    x(i)=i*i;
    if mod(x(i),2)==0
        fprintf('\n\t %d is even ',x(i));
    else
        fprintf('\n\t %d is odd ',x(i));
    end
end


clc;clear all
A=[89 56 78;12 36 78;89 45 63];
fprintf('\n\t The given matrix is :\n\n');
disp(A)
[m n]=size(A);
l=eig(A);
fprintf('\n\t Eigenvalues of the given matrix are :\n\n');
disp(l)
if l>0
   fprintf('\n\t The given matrix is positive definite :\n\n');
elseif l>=0
        fprintf('\n\t The given matrix is positive semi-definite :\n\n');
    elseif l<0
            fprintf('\n\t The given matrix is negative definite :\n\n');
        elseif l<=0
            fprintf('\n\t The given matrix is negative semi-definite :\n\n');
        else
            fprintf('\n\t The given matrix is in definite :\n\n');
        end
        fprintf('\n\t The determinant of given matrix is :%f\t\n',det(A));
        fprintf('\n\t Trace of given matrix is :%f\t\n',trace(A));
        fprintf('\n\t Product of given matrix is :%f\t\n',prod(l));
        fprintf('\n\t Sum of eigen values of given matrix is : %f\t\n',sum(l));