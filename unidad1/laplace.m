pkg load symbolic
close all; clear all; clc;

syms t real
g1 = dirac(t)
G1 = laplace(g1)

g2 = heaviside(t)
G2 = laplace(g2)

disp('Terminado')