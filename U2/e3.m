% Sistemas de Control
% Unidad 2 - Ejercicio 3
pkg load control
close all; clear all; clc
% Definición de constantes
L=1e-6;
R=2;
Ka=0.042;
J=10e-6;
B=0.3e-5;
Kb=0.042;
% Determinación de la F d T entre la velocidad y la tensión
s=tf('s')
G1=1/(L*s+R);
G2=1/(J*s+B);
M=G1*Ka*G2/(1+G1*Ka*G2*Kb);
M=minreal(M);
% FdT=G/(1+GH)
% Señal de referencia
p=0.001;
t=0:p:0.1-p;
% Simulación
lsim(M,u,t);
disp('Terminado')