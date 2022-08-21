% Unidad 2
% Ejercicio 2
pkg load control
close all; clear all; clc
% Sistema 1.
s=tf('s');
Kp=31;
G1=53*(s+1)/((s+10)*(s+100));
G2=1/s;
Kd=16;
Faux=feedback(G1,Kd);
FdTLA=Kp*Faux*G2;
FdTLC=feedback(FdTLA,1);% Respuesta al escalón
step(FdTLC);