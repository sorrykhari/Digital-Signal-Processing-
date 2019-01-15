recObj = audiorecorder(8000, 16, 1);
disp('Start speaking.')
recordblocking(recObj, 5);
disp('End of Recording.');
% Play back the recording.
play(recObj);
% Store data in double-precision array.
myRecording = getaudiodata(recObj);
% Plot the samples.
timevec = (1:0.0001:1.25)

plot(timevec,myRecording(1:length(timevec)))
xlabel('Time, in seconds')
title('Voice Recording of Me Saying "Aaaah"')