%calculate the solution of Optimal Control problem using
%Hamiltonian matrix
%SISO
A1=[1 -2 5;11 3 -21;5 10 -8];
B1=[1;2;-1];
Q1=eye(3);R1=1;
H1=[A1 -B1*inv(R1)*B1';-Q1 -A1'];%P=Y*inv(X);
[V1,D1]=eig(H1);XY1=[V1(:,1) V1(:,2) V1(:,6)];
X1=XY1(1:3,:);Y1=XY1(4:6,:);P1=Y1*inv(X1);
eig(A1-B1*inv(R1)*B1'*P1)
%MIMO
A2=[1 -2 3 6 1;2 -3 16 2.3 -7;5 8 -1.1 1.7 9;12 -9 16 23 0;-8 7 4.3 23 11];
B2=[1 -2; 3 0; 1 1; -1 0; 0 2];
Q2=eye(5);R2=eye(2);
H2=[A2 -B2*inv(R2)*B2';-Q2 -A2'];%P=Y*inv(X);
[V2,D2]=eig(H2);XY2=[V2(:,2) V2(:,7) V2(:,8) V2(:,9) V2(:,10)];
X2=XY2(1:5,:);Y2=XY2(6:10,:);P2=Y2*inv(X2);
eig(A2-B2*inv(R2)*B2'*P2)