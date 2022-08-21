% Unidad 1 - Ejercicio 6
%pkg load symbolic
close all; clear all;clc
syms t s real
g1=dirac(t);
G1=laplace(g1);
g2=heaviside(t);
G2=laplace(g2);
g3=exp(-2*t);
G3=laplace(g3);
disp("terminado");