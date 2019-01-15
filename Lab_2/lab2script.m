%% Lab 2 - Main
clear
close all
clc
addpath(genpath('\\prism.nas.gatech.edu\kmobley9\ECE\Documents\MATLAB\Labs\spfirst'))
%% Pre Lab %(a)
z_1 = 2.*exp(j.*(pi./4));
z_2 = (-sqrt(3)+j);
zvect(z_1,z_2)
hold on
zcoords
ucplot
hold off
zprint(z_1)
zprint(z_2)
%% (b)
z_1 = 2.*exp(j.*(pi./4));
z_2 = (-sqrt(3)+j);

conj_z1 = conj(z_1);
inv_z1 = (1./z_1);

conj_z2 = conj(z_2);
inv_z2 = (1./z_2);

zvect(conj_z1,conj_z2)
hold on
zcoords
ucplot
hold off

zvect(inv_z1,inv_z2)
hold on
zcoords
ucplot
hold off
%% c)
zcat([1+j,-2+j,1-2.*j])
%% d) 
z_1 = 2.*exp(j.*(pi./4));
z_2 = (-sqrt(3)+j);

z_sum = z_1 + z_2;
zvect(z_zum)
hold 
zcoords
ucplot
zcat(z_1,z_2)
zcoords
ucplot
%%
z_1 = 2.*exp(j.*(pi./4));
z_2 = (-sqrt(3)+j);
zdiv = z_1./z_2;
zvect(zdiv)
hold on
zcoords
ucplot
hold off
zmult = z_1.*z_2;
zvect(zmult)
hold on
zcoords
ucplot
hold off
zprint(zdiv)
zprint(zmult)
%% e)
z_1 = 2.*exp(j.*(pi./4));
z_2 = (-sqrt(3)+j);
z_sum = z_1 + z_2;
zmult = z_1.*z_2;
conj_z1 = conj(z_1);
inv_z1 = (1./z_1);

figure
subplot(2,2,1)
zvect(z_sum,zmult)
hold on, zcoords, ucplot, hold off

subplot(2,2,2)
zvect(z_1,conj_z1)
hold on, zcoords, ucplot, hold off

subplot(2,2,3)
zvect(z_1,inv_z1)
hold on, zcoords, ucplot, hold off

subplot(2,2,4)
zvect(z_1.*z_2)
hold on, zcoords, ucplot, hold off