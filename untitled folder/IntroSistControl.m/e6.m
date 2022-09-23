pkg load symbolic
syms s t a w real
G1=laplace(dirac(t))
G2=laplace(heaviside(t))
G3=laplace(exp(-2*t))
G4=laplace(5*exp(-5*t))
G5=1/s-laplace(exp(-2*t))
G6=laplace(t*sin(2*t)+exp(-2*t))
G7=laplace(heaviside(t-2)*exp(-5*(t-2)))
G8=laplace(exp(-a*t)*cos(w*t))