function sigOut = addCosVals( ss, dur, start, dt )
freq = [ss.freq];
X = [ss.complexAmp];
t = start:dt:dur;
sigOut.values = zeros(size(t));
sigOut.times = zeros(size(t));
for i = 1:length(freq)
    sigOut.values = sigOut.values + real(X(i).*exp(j*pi*freq(i)*t));
    sigOut.times = t;
end

end

