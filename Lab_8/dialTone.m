function xx = dialTone(key)

boy = num2str(key);
for i = 1:length(boy)
if boy(i) == '1'
    f1 = 697;
    f2 = 1209;
elseif boy(i) == '2'
    f1 = 697;
    f2 = 1336;
elseif boy(i) == '3'
    f1 = 697;
    f2 = 1477;
elseif boy(i) == 'A'
    f1 = 697;
    f2 = 1633;
elseif boy(i) == '4'
    f1 = 770;
    f2 = 1209;
elseif boy(i) == '5'
    f1 = 770;
    f2 = 1336;
elseif boy(i) == '6'
    f1 = 770;
    f2 = 1477;

elseif boy(i) == 'B'
    f1 = 770;
    f2 = 1633

elseif boy(i) == '7'
    f1 = 852;
    f2 = 1209;

elseif boy(i) == '8'
    f1 = 852;
    f2 = 1336;

elseif boy(i) == '9'
    f1 = 852;
    f2 = 1477;
elseif boy(i) == 'C'
    f1 = 852;
    f2 = 1633;
    
elseif boy(i) == '*'
    f1 = 941;
    f2 = 1209;
    
elseif boy(i) == '0'
    f1 = 941;
    f2 = 1336;
    
elseif boy(i) == '#'
    f1 = 941;
    f2 = 1477;
    
elseif boy(i) == 'D'
    f1 = 941;
    f2 = 1633;
end   
   
Ts = 0.3e-3; %- Sampling period = 3 msec
fsamp = 1/Ts; %- Sampling rate
tt = 0:1/fsamp:0.3;
DTMFsig = cos(2*pi*f1*tt+rand(1)) + cos(2*pi*f2*tt+rand(1)); %- Use random phases
xx = zeros(1,round(2/Ts)); %- pre-allocate vector to hold DTMF signals
n1 = round(0.6/Ts); n2 = n1+length(DTMFsig)-1;
xx(n1:n2) = xx(n1:n2) + DTMFsig;
xx = [xx(i) xx];
 soundsc(xx,fsamp); %- Optional: Listen to a single DTMF signal
spectrogram(xx,1024,[],[],fsamp,'yaxis'); grid on %- View its spectrogram


end