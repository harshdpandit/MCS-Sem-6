%Canonical form algorithm for pole
%placement
%SISO
A1=[1 -2 5;11 3 -21;5 10 -8];
B1=[1;2;-1];
W1=[B1 A1*B1 A1*A1*B1];
for i=1:3
    rho1=rank(W1(:,1:i))
end
M1=inv(W1);
P1=[M1(3,:);M1(3,:)*A1;M1(3,:)*A1*A1];
A1c=P1*A1*inv(P1);%A1c=real(A1c) to get rid of the lingering fractions #P1 is T
B1c=P1*B1;


%MIMO
A2=[1 -2 3 6 1;2 -3 16 2.3 -7;5 8 -1.1 1.7 9;12 -9 16 23 0;-8 7 4.3 23 11];
B2=[1 -2; 3 0; 1 1; -1 0; 0 2];
W2=[B2 A2*B2 A2*A2*B2 A2*A2*A2*B2 A2*A2*A2*A2*B2];
for k=1:10
    rho2=rank(W2(:,1:k))
end
WA2=[W2(:,1)'; W2(:,3)'; W2(:,5)'; W2(:,2)'; W2(:,4)']';
M2=inv(WA2);
P2=[M2(3,:);M2(3,:)*A2;M2(3,:)*A2*A2;M2(5,:);M2(5,:)*A2];
A2c=P2*A2*inv(P2);%A2c=real(A2c) to get rid of the lingering fractions
B2c=P2*B2;
