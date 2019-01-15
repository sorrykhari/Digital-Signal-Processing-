%%P1
dt = 1/800;
XX = rand(1,3).*exp(2i*pi*rand(1,3)); %--Random amplitude and phases
freq = 9;
ccsum = zeros(1,500);
for kx = 1:length(XX)

t = (1:500)*dt;
Ak = abs(XX(kx));
phik = angle(XX(kx));
ccsum(1:length(t)) = ccsum(1:length(t)) + Ak*cos(2*pi*freq*t + phik);
tt(1:length(t)) = t;

end
figure, plot(tt,ccsum) %-- Plot the sum sinusoid


