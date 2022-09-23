pkg load control;
close all; clear all; clc
% Asi son los comentarios
display('Hola mundo')
a=5;
b=a+10

t = 0 : 0.001 : 2*pi;

x = 2*sin(2*pi);
y = 0.8*cos(t);
plot(x, t, t, y);