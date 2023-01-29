clc;clear all
A=[1 2 0
    2 4 0 
    0 0 4];
[m,n]=size(A);
l=eig(A);
[p l]=eig(A);
y=[1000*rand(n,20) p];
[m1 n1]=size(y);
for i=1:n1;
    x=y(:,i)/norm(y(:,i));
    Q(i)=x'*A*x;
end
plot(Q,'b-*')
set(gcf,'color',[1 1 1]);
title('maxima and minima of of');
xlabel('x');       ylabel('Q(x)');
fprintf('\n\t The maxima of the QF is :%f',max(l));
fprintf('\n\t The minima of the QF is :%f',min(l));
fprintf('\n\t The maximum of the QF is :%f',max(Q));
fprintf('\n\t The minimum of the QF is :%f',min(Q));
[maxq i]=max(Q);    [minq j]=min(Q);
fprintf('\n\t The maximum value of Q is achieved at:\n');
disp(y(:,i))
fprintf('\n\t The minimum value of Q is achieved at:\n');
disp(y(:,j))
%