function xs = mySinusoid(amp,freq,pha,fs,tsta,tend)
tt = tsta:(1/fs):tend; %time indicies for all values
xs = amp*cos(freq*2*pi*tt+pha);
end

