function  sc = dtmfscore(xx, hh)

y = xx.*hh;

if y >= 0.6
    sc = 1;
else
    sc = 0; 

xx = 2*xx/max(abs(xx));   %---Scale x[n] to the range [-2,+2]
end