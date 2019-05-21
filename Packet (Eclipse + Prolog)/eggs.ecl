
:- lib(lists).
:- lib(fd).
:- lib(fd_search).

solveeggs(Egg):-

Egg = [Eggweight],
Egg :: 0..9999,


Eggweight #= (2*_)+1,
Eggweight #= (3*_)+1,
Eggweight #= (4*_)+1,
Eggweight #= (5*_)+1,
Eggweight #= (6*_)+1,
Eggweight #= 7*_,
minimize(labeling(Egg), Eggweight).


