%%%Type 0 System%%%
G0=tf(1,[1 5 6]);
T0=feedback(G0,1);
subplot(3,2,1);
step(T0);
axis([0,3,0,0.2]);
title('Type 0 Step Response')
[impulse,t]=gensig('pulse',4,10,0.1);
subplot(3,2,2);
lsim(T0,impulse,t);
axis([0,10,-1,1.5]);
title('Type 0 Impulse Response')
%%%Type 1 System%%%
G1=tf(1,[1 5 6 0]);
T1=feedback(G1,1);
subplot(3,2,3);
step(T1);
axis([0,30,0,1.5]);
title('Type 1 Step Response')
[impulse,t]=gensig('pulse',4,10,0.1);
subplot(3,2,4);
lsim(T1,impulse,t);
axis([0,10,-1,1.5]);
title('Type 1 Impulse Response')
%%%Type 2 System%%%
G2=tf([1 4 3],[1 5 6 0 0]);
T2=feedback(G1,1);
subplot(3,2,5);
step(T2);
axis([0,30,0,1.5]);
title('Type 2 Step Response')
[impulse,t]=gensig('pulse',4,10,0.1);
subplot(3,2,6);
lsim(T2,impulse,t);
axis([0,10,-1,1.5]);
title('Type 2 Impulse Response')
