close all
clc;
A=[1 2 3; 4 5 6; 7 8 9];
eig(A)
B=[1;-2;-1];
B'*B
B*B' %   B' is B transpose
clp=[-20;-25;-30]
B
C=[1 0 0]
K=place(A,B,clp)
eig(A-B*K)%in class we used A+BK
rank(ctrb(A',C')) %rank of controllablity matrix
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%for observer matrix
Lprime=place(A',C',[-22;-27;-32])
L=Lprime'
eig(A-L*C)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

Acl=A-B*K 
eig(Acl)
help lyap

%P Acl + Acl'P+ Q =0

Q = eye(3); %identity matrix 3x3, symetric positive definite matrix

vecQ=[Q(:,1);Q(:,2);Q(:,3)]
kron(eye(3),Acl') %Kronecker Product

VecP=inv((kron(Q,Acl')+kron(Acl',Q)))*(-vecQ)

P=reshape(VecP,3,3)

eig(P)

lyap(Acl',Q) %take transpose


