:- lib(lists).
:- lib(fd).
:- lib(fd_search).


digits(Set):-

Set = [A,B,C,D,E,F,G,H,I],
Set :: 1..9,
alldifferent(Set),

Product #= (100*A + 10*B + C) * (10*D + E),
Product #= (10*F + G) * (10*H + I),


Finalproduct #= -1 * (Product),

minimize(labeling(Set), Finalproduct),

printf("%3d\n", A).