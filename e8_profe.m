%Unidad 1 - Ejercicio 8
pkg load control
close all;clear all; clc;
G1=tf(5,[1 2]
G1p=zpk([],[-2],5)
s=tf('s');
G1pp=5/(2+s)
% G1=tf(5*s^0,[1*s^1+2*s^0])
step(G1)
% G4
G4pp=5*(s+1)/(s^2+s+2)
G4=tf(5*[1 1],[1 1 2])
G4=
G4p=zpg()