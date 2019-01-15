function sigVal = makeFMexpVals(sigFMexp,dt)

sigFMexp.Amp = 7.7; %-- Amplitude
sigFMexp.fc = 395;%-- center frequency
sigFMexp.beta = 1.77%-- FM parameter
sigFMexp.gamma = 5;%-- FM parameter
sigFMexp.t1 = 0;%-- starting time
sigFMexp.t2 = 3.04;%-- ending tim
fs = 4000;
dt = 1/fs;
t = sigFMexp.t1:dt:sigFMexp.t2;
sigVal = sigFMexp.Amp.*(cos(sigFMexp.fc.*t + (1./(sigFMexp.beta.*t)).*sigFMexp.gamma.*exp(sigFMexp.beta.*t)))
end