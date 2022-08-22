% Sistema 2
pkg load control
close all; clear all; clc
% Sistema 1
% Definiciones
s=tf('s');
PI=(s+1)/s;
P=12;
G1=27/(s+200);
G2=5/(s+0.1);
% Lazo Interno
FdTLI=feedback(P*G1,1)
% Lazo abierto
FdTLA=PI*FdTLI*G2;
% Lazo cerrado
FdTLC=feedback(FdTLA,1)
##% Respuesta al escalón
step(FdTLC,8);