% Sistema 3
close all; clear all;clc
pkg load symbolic
% Definición de variables simbólicas
syms Kp Ti Td s wn p real % Paciencia...
% Funciones de transferencia
PID=Kp*(Ti*Td*s^2+Ti*s+1)/(Ti*s)
Planta=wn^2/(s^2+2*p*wn*s+wn^2)
% F d T de lazo abierto:
FdTLA=PID*Planta
% F d T de lazo cerrado:
FdTLC=FdTLA/(1+FdTLA)
% vista simplificada
FdTLC=factor(FdTLC)
% Para saber más sobre la función factor:
help @sym/factor