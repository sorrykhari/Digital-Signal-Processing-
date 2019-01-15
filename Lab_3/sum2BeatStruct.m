function sigBeatSum = sum2BeatStruct(sigBeat)
sigBeat.Amp = 10; %-- B in Equation (3)
sigBeat.fc = 440; %-- center frequency in Eq. (3)
sigBeat.phic = 0; %-- phase of 2nd sinusoid in Eq. (3)
sigBeat.fDelt = 30; %-- modulating frequency in Eq. (3)
sigBeat.phiDelt = -2*pi/3; %-- phase of 1st sinusoid Eq.~(\ref{Labeq:beatSigSum})
sigBeat.t1 = 1.1; %-- starting time
sigBeat.t2 = 10.4; %-- ending time

sigBeatSum = testingBeat;
fc = testingBeat.fc;
fDelt = testingBeat.fDelt;
phic = testingBeat.phic;
phiDelt = testingBeat.phiDelt;
sigBeatSum.f1 = (fc - fDelt);
sigBeatSum.f2 = (fDelt);
B = testingBeat.Amp;
f1 = testingBeat.f1;
f2 = testingBeat.f2;
t1 = testingBeat.t1;
t2 = testingBeat.t2;
t = t1:(1/8000):t2;
sigBeatSum.X1 = 0.5*B*exp(1j*2*pi*f1*t);
sigBeatSum.X2 = 0.5*B*exp(1j*2*pi*f2*t);

value = B.*cos((2*pi*fDelt*t)).*cos(2*pi*fc*t);






end