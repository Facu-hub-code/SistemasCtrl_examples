clear all; close all; clc;
pkg load symbolic
pkg load control
syms K t s TF
s = tf('s');
K = 4;
TF = 600;
R = 4*0.98;
%% 4*t = 0.98*K
%% 4*t = 219seg
t = 219/4;
G  = 4/(t*s+1);
step(G,TF);