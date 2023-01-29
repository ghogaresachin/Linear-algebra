clc;clear all
A=[1  3  1  1  1  
    1  2  1  2  1
    1  2  3  6  2 
    0  1  -2  -5  1];A
A=[2.5 0.58 0.4
    0.6 0.32  1
    0.2 0.84  4];
r=rank(A);r
[m n]=size(A);
G=zeros(m,n);  B=A(1:r,1:r);
if rank(B)==rank(B)
    G(1:r,1:r)=inv(B)';
    G=G';
    fprintf('\n\t The g-inverse of the given matrix is:\n');
    disp(G);
end

G1=zeros(m,n);  B1=A(1:r,2:r+1);
if rank(B1)==rank(A)
    G1(1:r,2:r+1)=inv(B1)';
    G1=G1';
    fprintf('\n\t The other g-inverse of  given matrix is:\n');
    disp(G1);
end
a=rand(1);a
fprintf('\n\t The other g-inverse of  given matrix is:\n');
G2=a*G+(1-a)*G1;G2
disp(G2);
