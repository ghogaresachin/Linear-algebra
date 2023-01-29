
clc;clear all
n=7;
for i=1:7;
    for j=1:n
        A(i,j)=1/(i+j-1);A
    end
end
disp(' This is an a special matrix')
disp(A)
fprintf('\n\t Determinant of given matrix is=%f',det(A))
fprintf('\n\t Size of given matrix is=%f',size(A))
fprintf('\n\t Rank of given matrix is=%f',rank(A))

for i=1:10;
    x(i)=i*i;
    if mod(x(i),2)==0;
        fprintf('\n\t %d is even',x(i));
    else
        fprintf('\n\t %d is odd',x(i));
    end
end

clc;clear all
B=[89 56 78;12 3 78;89 45 63];B
[m n]=size(B);
fprintf('\n\t Rank of given matrix is %d\n',rank(B));
if m==n;
    fprintf('\n\t The given matrix is square \n');
    fprintf('\n\t Determinant of given matrix is=%f\n',det(B))
    if B==B'
        fprintf('\n\t THe given matrix is symmetric \n');
    else
        fprintf('\n\t THe given matrix is not symmetric \n');
    end
    if det(B)==0
        fprintf('\n\t THe given matrix is singular \n');
    else
        fprintf('\n\t THe given matrix is not singular \n');
        if B*B'==eye(n)
            fprintf('\n\t THe given matrix is orthogal \n');
        else
            fprintf('\n\t THe given matrix is not orthogonal \n');
        end
    end
else
    fprintf('\n\t THe given matrix is not square \n');
end
clc;clear all
D=[2 -1 1 ;1 1 -3 ;5 -2 -4];
D_1=[-3 -1 1;17 1 -3;20 -2 -4];
D_2=[2 -3 1;1 17 -3;5 20 -4];
D_3=[2 - -3;1 1 17;5 -2  20];
x1=det(D_1)/det(D);
x2=det(D_2)/det(D);
x3=det(D_3)/det(D);
            

