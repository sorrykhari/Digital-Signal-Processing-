function  hh = dtmfdesign(fcent, L, fs)
%DTMFDESIGN
%     hh = dtmfdesign(fcent, L, fs)
%       returns a matrix where each column is the
%       impulse response of a BPF, one for each frequency
%  fcent = vector of center frequencies
%      L = length of FIR bandpass filters
%     fs = sampling freq  
%
%   The BPFs must be scaled so that the maximum magnitude
%    of the frequency response is equal to one.
%

%==========================================
end