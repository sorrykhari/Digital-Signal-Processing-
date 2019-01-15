function out = dialTone(key)
key = char(key);

if key == '1'
    f1 = 697;
    f2 = 1209;
elseif key == '2'
    f1 = 697;
    f2 = 1336;
elseif key == '3'
    f1 = 697;
    f2 = 1477;
elseif key == 'A'
    f1 = 697;
    f2 = 1633;
elseif key == '4'
    f1 = 770;
    f2 = 1209;
elseif key == '5'
    f1 = 770
    f2 = 1336
elseif key == '6'
    f1 = 770;
    f2 = 1477;

elseif key == 'B'
    f1 = 770;
    f2 = 1633

elseif key == '7'
    f1 = 852;
    f2 = 1209;

elseif key == '8'
    f1 = 852;
    f2 = 1336;

elseif key == '9'
    f1 = 852;
    f2 = 1477;
elseif key == 'C'
    f1 = 852;
    f2 = 1633;
    
elseif key == '*'
    f1 = 941;
    f2 = 1209;
    
elseif key == '0'
    f1 = 941;
    f2 = 1336;
    
elseif key == '#'
    f1 = 941;
    f2 = 1477;
    
elseif key == 'D'
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
%-- soundsc(xx,fsamp); %- Optional: Listen to a single DTMF signal
out = plotspec(xx,fsamp); grid on %- View its spectrogram
end