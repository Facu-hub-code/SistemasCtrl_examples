close all; clear all; clc;
pkg load control
s=tf('s');
P=12;
PI=(s+0.1)/s;
G1=27/(s+200);
G2=5/(s+0.1);

FdtLI = feedback(P*G1,1)
%cuando multiplicas el software no simplifica por si solo
FtLA = minreal(PI*FdtLI*G2) 
Ffinal = feedback(FtLA,1)