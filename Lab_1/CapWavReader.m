[xx fs] = audioread('cap.wav');
L_xx = length(xx);
signalLength = (xx./fs);
xtime = (0.25:0.0001:0.5);
plot(xtime,xx(1:length(xtime)),'b--') 
title('Graph of WAV File in MATLAB')
xlabel('Time in seconds') 
hold