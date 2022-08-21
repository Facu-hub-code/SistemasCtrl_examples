pkg load symbolic
syms s t a w real
g1=ilaplace(2/(s+3))
g2=ilaplace(1/s/(s+2)/(s+3))
g3=ilaplace((6*s+8)/(s*(s+1)*(s+2)))
g4=ilaplace(10*s/(s^3+6*s^2+11*s+6))
g5=ilaplace(10/((s+1)^2*(s+3)))
g6=simplify(ilaplace(w/((s+a)^2+w^2)))
g7=ilaplace(9/(2*s^2+4*s+4))
g8=simplify(ilaplace((2*s+12)/(s^2+2*s+5)))
g9=ilaplace(2*exp(-5*s)/(s^2+4))
g10=ilaplace(100/(s*(s^2+4)))
g11=simplify(ilaplace(100*(s+2)*exp(-s)/(s*(s^2+4)*(s+1))))