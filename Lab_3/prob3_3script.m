silence =  key2sinus(0,0,0,8000,0.1);
c4 = key2sinus(40,4.5,0,8000,0.4);
df4 = key2sinus(41,4.5,0,8000,0.4);
d4 = key2sinus(42,4.5,0,8000,0.4);
ds4 = key2sinus(43,4.5,0,8000,0.4);
e4 = key2sinus(44,4.5,0,8000,0.4);
f4 = key2sinus(45,4.5,0,8000,0.4);
gf4 = key2sinus(46,4.5,0,8000,0.4);
g4 = key2sinus(47,4.5,0,8000,0.4);
gs4 = key2sinus(48,4.5,0,8000,0.4);
a4 = key2sinus(49,4.5,0,8000,0.4);
as4 = key2sinus(50,4.5,0,8000,0.4);
b4 = key2sinus(51,4.5,0,8000,0.4);
c5 = key2sinus(52,4.5,0,8000,0.4);

catvec = [silence c4 df4 d4 ds4 e4 f4 gf4 g4 gs4 a4 as4 b4 c5 silence];
oink = audioplayer(catvec,8000);
play(oink)

