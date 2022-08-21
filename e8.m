pkg load control
G1=tf(5,[1 2])
step(G1);grid
G2=zpk([],[-2 -3],1)
step(G2);grid
G3=tf(2,[1 2])
G3.inputdelay=10
step(G3);grid
G4=5*tf([1 1],[1 1 2])
step(G4);grid
G5=zpk([-2],[-3 -4],5)
step(G5);grid
G6=tf(5,[1 0])
step(G6);grid
G7=zpk([-2],[0 -4],12)
step(G7);grid
G8=zpk([0],[ -4],1)
step(G8);grid