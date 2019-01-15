function [xx tt] = goodcos(ff,dur)
tt = 0:1./(100*ff ):dur;
xx = real(exp(2j*pi*ff*tt));
