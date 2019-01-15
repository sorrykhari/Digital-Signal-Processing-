function sigOut = makeCosVals(sigIn,dur,tstart,dt)
ff = sigIn.freq;
X = sigIn.complexAmp;
sigOut.freq = ff;
sigOut.complexAmp = X;
realpart = real(X);
imgpart = imag(X);
A = sqrt(realpart^2 + imgpart^2);
phi = atan(imgpart/realpart);
tt = (tstart:dt:dur);
xx = A*cos(2*pi*ff*tt+phi);
sigOut.times = tt;
sigOut.values = xx;
end

%sigIn.freq = 2; %-- (in hertz)
%sigIn.complexAmp = 5*exp(j*pi/4);
%dur = 2;
%start = -1;
%dt = 1/(32*mySig.freq)