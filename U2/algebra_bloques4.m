% Sistema 4
close all; clear all; clc
pkg load symbolic
% Definiciones de variables simbólicas
syms Kp Ti Td s K T real
% Funciones de transferencia
PID=Kp*(1+1/(Ti*s)+Td*s);
G1=K/(T*s+1);
% Función de transferencia de lazo abierto:
FdTLA=PID*G1;
% Función de transferencia de lazo cerrado:
FdTLC=factor(simplify(FdTLA/(1+FdTLA)))