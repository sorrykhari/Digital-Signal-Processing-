function dtmfsig = dtmfdial(nums,fs)
%DTMFDIAL  Create a vector of tones which will dial 
%           a DTMF (Touch Tone) telephone system.
%
% usage:  dtmfsig = dtmfdial(nums) 
%      nums = vector of numbers ranging from 1 to 12
%        fs = sampling frequency
%   dtmfsig = vector containing the corresponding tones.
%
  
tone_cols = ones(4,1)*[1209,1336,1477];
tone_rows = [697;770;852;941]*ones(1,3);
dtmfsig = [tone_rows,tone_cols];
end