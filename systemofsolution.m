clc;clear all;
A=[-1  2  4  -2  3
    20  5  3  -2  -1
    2  18  60  5  -3
    2  4  4  0  3
    2  3  -6  5  4];A
b=[24  29  177  26  0]';
[m n]=size(A);
x=zeros(n,1);
for i=1:n
    C=A
    C(:,1)=b;
    x(i)=det(C)/det(A);
end
disp('solutioon of soe');
disp(x)
%system of linear equation usin cramer rule
