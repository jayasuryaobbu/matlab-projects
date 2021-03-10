%%%Identifying the different responces of Mechanical System%%%
%Intializing Variables%
M=1;
B=5;
K=25;
%Declaring State Space Variables%
A=[0 1;-K/M -B/M];
B=[0;1/M];
C=[1 0];
D=0;
%Simulating Systems by StateSpace%
mechss=ss(A,B,C,D);
%Developing Step, Impulse, Square, Triangular Responses%
subplot(2,2,1);
[y1,t1]=step(mechss);
u1=ones(size(t1));
plot(t1,y1,t1,u1);grid on;
axis([0,2.5,0,1.5])
StepError=y1(length(y1));
title('Step Response')

[square,t]=gensig('square',4,10,0.1);
subplot(2,2,2);
[y2,t2]=lsim(mechss,square,t);
plot(t2,y2,t2,square);grid on;
axis([0,10,-0.2,1.5])
SquareError=y2(length(y2));
title('Square Response')

[impulse,t]=gensig('pulse',4,10,0.1);
subplot(2,2,3);
[y3,t3]=lsim(mechss,impulse,t);
plot(t3,y3,t3,impulse);grid on;
axis([0,10,-0.2,1.5])
PulseError=y3(length(y3));
title('Pulse Response')

t=0:0.001:0.05 ;
tri=sawtooth(2*pi*140*t,0.5);
subplot(2,2,4);
[y4,t4]=lsim(mechss,tri,t);
plot(t4,y4,t4,tri);grid on;
TriangularError=y4(length(y4));
title('Triangular Response')



