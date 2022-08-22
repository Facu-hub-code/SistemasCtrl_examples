% Sistemas de Control
% Unidad 2 - Ejercicio 10
% Sistema 3
pkg load control
close all; clear all; clc
% Definición de las funciones.
s=tf('s');
% Parámetros del algoritmo de Mason
M1=10*1/s*1/s*1;
M2=10*5;
l1=-5/s;
l2=-1*1/s*1/s;
l3=-10*s*1/s*1;
l4=-5;
l5=5*1*(-10*s)*(-5);
D=1-(l1+l2+l3+l4+l5);
D1=1;
D2=1;
G=minreal((M1*D1+M2*D2)/D)
disp('Terminado')
