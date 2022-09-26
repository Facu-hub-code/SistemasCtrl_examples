close all; clear all; clc;
syms R1 C1 s real
G1=1/(s*C1)
ilaplace(G1)