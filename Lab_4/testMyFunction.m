function  testMyFunction(f1,f2, fs, dur)
f1=1000;
f2=700;
fs =8000;
dur = 0.4;
[xx,tt] = mulCos(f1,f2,fs,dur);
figure
plot(tt,xx(1:length(tt)),'b') 
title('xx(t)')
xlabel('[t]')
end
