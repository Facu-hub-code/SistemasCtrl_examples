close all; clear all; clc;
pkg load control;
s = tf('s');
G1 = 1/(s^2+s);
G2 = 3*s/(s+1)*(s+3);
G3 = 2/(s+2);

FtLC = feedback(G2,G3)

FtLA = G1 * FtLC

Ffinal = feedback(FtLA,1)

FF = minreal(Ffinal)

Fparcial = minreal(feedback(G1*feedback(G2,G3),1))