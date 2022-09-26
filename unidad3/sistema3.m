clear all; close all; clc;
pkg load symbolic;

syms Kp Ti Td s wn p real
PID=Kp*(Ti*Td*s^2+Ti*s+1)/(Ti*s)
Planta=wn^2/(s^2+2*p*wn*s+wn^2)

FtLA = Kp * PID * Planta

FdLC =  FtLA/(1+FtLA)