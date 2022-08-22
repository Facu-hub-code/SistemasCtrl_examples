close all; clear all; clc
syms G1 G2 G3 G4 H1 H2 H3 real
M1=G1*G2*G3;
M2=G3*G4;
l1=-G1*H1;
l2=-G3*H2;
l3=-G1*G2*G3*H3;
l4=-G3*G4*H3;
D=1-(l1+l2+l3+l4)+(l1*l2);
D1=1;
D2=1;
Y5_Y1=(M1*D1+M2*D2)/D