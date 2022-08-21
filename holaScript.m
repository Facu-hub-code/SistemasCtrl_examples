close all; clear all; clc;
pkg load control;
disp("Hola Mundo");
t=0:0.001:2*pi;
x=1.2*sin(2*t);
y=0.8*cos(t);
plot(t,x,t,y);

disp("Terminado");