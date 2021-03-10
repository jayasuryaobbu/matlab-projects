%%%Simulation of Mechanical System%%%
%Intializing Variables%
M=1;
B=5;
K=25;
%Declaring State Space Variables%
A=[0 1;-K/M -B/M];
B=[0;1/M];
C=[1 0];
D=0;
%Simulating Systems by StateSpace, TransferFunction, ZerosPolesGain Methods
mechss=ss(A,B,C,D);
[tf_n,tf_d]=ss2tf(A,B,C,D);
[z,p,k]=ss2zp(A,B,C,D);
