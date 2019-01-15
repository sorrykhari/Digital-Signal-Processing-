function [xx,tt] = mulCos(f1,f2,fs,dur)
tt = 0:(1/fs):dur;
cos1 = real(exp(1j*2*pi*f1*tt));

cos2 = real(exp(1j*2*pi*f2*tt));
xx = cos1 .* cos2;

end
