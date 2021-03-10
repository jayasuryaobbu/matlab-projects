%%%Simulation of Electrical System%%%
%Intializing Variables%
R=1.4;
L=2;
C=0.32;
%Declaring State Space Variables%
A=[0 1/C;-1/L -R/L];
B=[0;1/L];
C=[1 0];
D=0;
%Simulating Systems by StateSpace, TransferFunction, ZerosPolesGain Methods
eless=ss(A,B,C,D);
[tf_n,tf_d]=ss2tf(A,B,C,D);
[z,p,k]=ss2zp(A,B,C,D);