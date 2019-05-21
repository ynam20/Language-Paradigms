:- lib(lists).
:- lib(fd).
:- lib(fd_search).


solveplanets(Letters):-

Letters = [P,L,U,T,O,R,A,N,S,E,P,T,J,I,H,M,V,C,Y],
Letters:: 1..50,


P+L+U+T+O #= 40,
U+R+A+N+U+S #= 36,
N+E+P+T+U+N+E #= 29,
S+A+T+U+R+N #= 33,
J+U+P+I+T+E+R #= 50,
M+A+R+S #= 32,
E+A+R+T+H #= 31,
M+O+O+N#= 36,
V+E+N+U+S #= 39,
M+E+R+C+U+R+Y #= 33,
S+U+N #= 18,
Planets #= P+L+A+N+E+T+S,

minimize(labeling(Letters), Planets).