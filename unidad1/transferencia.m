close all; clear all; clc;
pkg load control
pkg load symbolic

% G1 = tf(num,den) | G1 = tf(5*s^0 , (1*s^1 + 2*s^0))
G1 = tf(5, [1, 2])

G1p = zpk([], [-2], 5)
step(G1)
step(G1p)