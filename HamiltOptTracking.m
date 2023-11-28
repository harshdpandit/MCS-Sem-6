%calculate the solution of Optimal Control problem using
%Hamiltonian matrix
%SISO
global A1 B1 K1 R1 Kfw
A1=[-10 -2 5;11 -13 -21;5 10 -8];%This system is asymptotically stable
%owing to a requirement. This property can be achived by pole placing the
%system matrix eigenvalues if the open loop ones are in the RHP
B1=[1;2;-1];
Q1=eye(3);R1=1;
H1=[A1 -B1*inv(R1)*B1';-Q1 -A1'];%P=Y*inv(X);
[V1,D1]=eig(H1);XY1=[V1(:,1) V1(:,2) V1(:,3)];
X1=XY1(1:3,:);Y1=XY1(4:6,:);P1=Y1*inv(X1);
eig(A1-B1*inv(R1)*B1'*P1)
P1=real(P1);
%
%Disturbance Rejection Simulation
K1=inv(R1)*B1'*P1;
%Kfw
vP1=[P1(:,1);P1(:,2);P1(:,3)];
Acl1=A1-B1*inv(R1)*B1'*P1;
vKfw=inv(kron(eye(3),Acl1')+kron(A1',eye(3)))*(-vP1);
Kfw=reshape(vKfw,3,3);
y10=pi/6;y20=-0.2;y30=1;
options=odeset('MaxStep',1e-2);
[t1,y1]=ode45(@tracking,[0 25],[y10;y20;y30],options);
figure(1)
plot(t1,y1(:,1),'blue')
xlabel('time')
ylabel('states')
grid on
hold on
plot(t1,y1(:,2),'green')
hold on
plot(t1,y1(:,3),'red')
legend('y_{1}','y_{2}','y_{3}')