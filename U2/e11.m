close all; clear all; clc
pkg load symbolic
syms R L K J B s real
% Trayectorias directas
M1=1/L*1/s*(K/J)*1/s;
l1=-R/(s*L);
l2=-B/(s*J);
l3= 1/s*K/J*1/s*(-K/L);
D=1-(l1+l2+l3)+l1*l2;
D1=1;
G=factor(M1*D1/D,'s')