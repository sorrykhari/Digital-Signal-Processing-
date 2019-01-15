[xx1 fs1] = audioread('cap.wav');
%read
signalLength1 = (length(xx1)./fs1);
% not sure 
xDecayReversed = (0.5:-0.0001:0.25)

%.......?
plot(xDecayReversed,xx1(1:length(xDecayReversed)))
