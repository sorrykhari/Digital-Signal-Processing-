close all
clear all 
num_sinusoid = [1 3 10 100];
L_nm = length(num_sinusoid);
f0 = 1.65;
figure,
for jj = 1:L_nm
    clear cosIn
    for kk = 1:num_sinusoid(jj)
        cosIn(kk).freq = kk.*f0;
        cosIn(kk).complexAmp = (1-(-1)^kk)/pi/kk*exp(1j/2*pi);
    end
    dur = 3;
    dt = 0.05;
    tstart = 0;
    a(jj) = addCosVals(cosIn,dur,tstart,dt);
    subplot(2,2,jj)
    plot(a(jj).times,a(jj).values)
    title(sprintf('Sum of %d sinusoids',num_sinusoid(jj)))
end