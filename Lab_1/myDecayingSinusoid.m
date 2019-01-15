function [x_t] = myDecayingSinusoid(A,b,omega,phi,fs,tStart,tEnd)
% first make indicies of time
tInd = tStart:(1/fs):tEnd;
% make decaying equation
x_t = ((A.*exp(-b.*tInd)).*cos((omega.*(tInd))+phi));

end