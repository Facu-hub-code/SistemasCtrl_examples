% Unidad 2
% Ejercicio 2
pkg load control
close all; clear all; clc
s=tf('s');
Kp=31;
Kd=16;
G2=1/s;
G1=53*(s+1)/((s+10)*(s+100));
F1 = feedback(G1,Kd)
F2=Kp*F1*G2
feedback(F2,1)