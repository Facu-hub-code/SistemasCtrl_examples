%Unidad 1 - Ejercicio 7
close all; clear all; clc;
syms s t real
G1=2/(s+3)
g1=laplace(G1)
G2=1/(s*(s+2)*(s+3))
g2=laplace(G2)