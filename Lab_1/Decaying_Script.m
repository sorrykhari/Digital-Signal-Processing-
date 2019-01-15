A = 10;
freq = 40;
omega = (2*pi*freq);
b = 0.8;
phi = (pi/4);
tStart = 0;
tEnd = 2;
fs = 4000;
x_t = myDecayingSinusoid(A,b,omega,phi,fs,tStart,tEnd);


tz = tStart:(1/fs):(tStart+2/freq);
L_tz = length(tz);
tz2 = myDecayingSinusoid(A,3,omega,phi,fs,tStart,tEnd);


plot(tz,x_t(1:L_tz),'b-',tz,tz2(1:L_tz),'r--'), grid on
title('TWO DECAYING SINUSOIDS W/ DIFFERENT DECAYING RATES')
xlabel('Time in seconds')

