% Sistemas de Control
% Unidad 2 - Ejercicio 5
pkg load symbolic
close all; clear all; clc
syms a b ka kb s
% Funciones de transferencia de prueba
G=ka/(s+a);
H=kb/(s+b);
% Función de transferencia de lazo cerrado
FdTLCG=G/(1+G*H);
% Reescribiendo:
FdTLCG=factor(FdTLCG,'s')
% Por otro lado, G*:
Gstar=factor(simplify(G/(1+G*H-G)),'s');
% Y la función de transferencia de lazo cerrado
FdTLCGstar=factor(simplify(Gstar/(1+Gstar)),'s')
disp('Terminado')