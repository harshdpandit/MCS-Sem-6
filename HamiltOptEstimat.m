%calculate the solution of Optimal Control problem using
%Hamiltonian matrix
%SISO
A1=[1 -2 5;11 3 -21;5 10 -8];
C1=[1;2;-1]';
Q1=eye(3);R1=1;%Q1=Theta and R1=Omega
H1=[A1' -C1'*inv(R1)*C1;-Q1 -A1];%S=Y*inv(X);
[V1,D1]=eig(H1);XY1=[V1(:,1) V1(:,2) V1(:,4)];
X1=XY1(1:3,:);Y1=XY1(4:6,:);S1=Y1*inv(X1);
eig(A1-S1*C1'*inv(R1)*C1)
%MIMO
A2=[1 -2 3 6 1;2 -3 16 2.3 -7;5 8 -1.1 1.7 9;12 -9 16 23 0;-8 7 4.3 23 11];
C2=[1 -2; 3 0; 1 1; -1 0; 0 2]';
Q2=eye(5);R2=eye(2);%Q2=Theta and R2=Omega
H2=[A2' -C2'*inv(R2)*C2;-Q2 -A2];%S=Y*inv(X);
[V2,D2]=eig(H2);XY2=[V2(:,2) V2(:,7) V2(:,8) V2(:,9) V2(:,10)];
X2=XY2(1:5,:);Y2=XY2(6:10,:);S2=Y2*inv(X2);
eig(A2-S2*C2'*inv(R2)*C2)