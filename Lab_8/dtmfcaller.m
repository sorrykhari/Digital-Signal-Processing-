function dtmfcaller(vecnum)
for i = 1:length(vecnum)
hh = dtmfdesign(vecnum(i), 80, 8000)
hold on
end