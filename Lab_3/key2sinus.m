function [xx tt] = key2sinus(keynum,amp,phase,fsamp,dur)
tt = 0:(1/fsamp):dur;
freqKey = 440*(2^((keynum-49)/12));
Xphasor = amp*exp(1j*phase);
xx = real(Xphasor*exp(j*2*pi*freqKey*tt));
moo = audioplayer(xx,8000);



end