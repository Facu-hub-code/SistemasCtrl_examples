% Sistemas de Control
% Unidad 2 - Ejercicio 4
pkg load control
close all; clear all; clc
% Definición de constantes
L=1e-6;
R=2;
Ka=0.042;
J=10e-6;
B=0.3e-5;
Kb=0.042;
% Controlador
Kp=1;
% Determinación de la F d T
s=tf('s');
G1=1/(L*s+R);
G2=1/(J*s+B);
M=minreal(G1*Ka*G2/(1+G1*Ka*G2*Kb));
% FdT=G/(1+GH), F d T del
% Función de transferencia de lazo cerrado
FdTLC=minreal(Kp*M/(1+Kp*M))
% Señal de referencia
p=0.0001;
t=0:p:0.02-p;
u=300*ones(length(t),1);
% Simulación
lsim(FdTLC,u,t);
disp('Terminado')