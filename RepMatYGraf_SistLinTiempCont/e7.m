% Sistemas de Control
% Unidad 2 - Ejercicio 7
pkg load symbolic
close all; clear all; clc
% Definición de las funciones.
syms G1 G2 G3 H1 H2 H3 real
% Función de Transferencia del sistema 1.
M1=G1*G2*G3;
l1=-G1*H1;
l2=-G2*H2;
l3=-G3*H3;
D=1-(l1+l2+l3)+(l1*l2+l1*l3+l2*l3)-(l1*l2*l3);
D1=1;
disp('Función de Transferencia del Sistema 1')
FdTLCs1=factor(simplify(M1*D1/D),'s')
% Función de Transferencia del sistema 2.
M1=G1*G2*G3;
l1=-G1*H1;
l2=-G2*H2;
l3=-G3*H3;
D=1-(l1+l2+l3)+(l1*l3);
D1=1;
disp('Función de Transferencia del Sistema 2')
FdTLCs2=factor(simplify(M1*D1/D),'s')