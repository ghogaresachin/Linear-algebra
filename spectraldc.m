clc;clear all
%A=2*ones(5,5)+diag([10,5,90,7,8]);
 A=[ 4   1   3   1
     1   4   1   3
     3   1   4   1
     1   3   1   4];

[P L]=eig(A);   l=eig(A);
fprintf('\n\t The given matrix is : \n');
disp(A);
k=2;                     A_2=P*L^k*P';
fprintf('\n\t The A^%d = \n',k);     disp(A_2);
A_7=P*L^7*P'    % By SDT
A7=A^7          % By actual power

A_inv=P*L^(-1)*P'    % By SDT
Ainv=inv(A)         % By inverting

A_n4=P*L^(-4)*P'    % By SDT
An4=A^(-4)          % Actual power

A_n1_by_3=P*L^(-1/3)*P'    % By SDT
An1by3=A^(-1/3)            % Actual power

A_half=P*L^(0.5)*P'      % By SDT
Ahalf=A^(1/2)            % Actual power

A_n7by2=P*L^(-7/2)*P'      % By SDT
An7by2=A^(-7/2)            % Actual power