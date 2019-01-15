amps = [10,1];
freqs = [4,1024];
phases = [pi,pi];
fs = 8000;
tStart = [0,0];
durs = [5,5];
maxTime = max(tStart+durs) + 0.1; %-- Add time to show signal ending
durLengthEstimate = ceil(maxTime*fs);
tt = (0:durLengthEstimate)*(1/fs); %-- be conservative (add one)
xx = 0*tt; %--make a vector of zeros to hold the total signal
for kk = 1:length(amps)
nStart = round(fs*tStart(kk))+1; %-- add one to avoid zero index
xNew = shortSinus(amps(kk), freqs(kk), phases(kk), fs, durs(kk));
Lnew = length(xNew);
nStop = length(xNew)+nStart-1; %<========= Add code
xx(nStart:nStop) = xx(nStart:nStop) + xNew;
end
plotspec(xx,fs,256); grid on