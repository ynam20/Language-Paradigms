:- lib(lists).
:- lib(fd).
:- lib(fd_search).


solvebeer(Beer):-


Gallons = [15,31,19,20,16,18],

Barrels = [A,B,C,D,E,Beer],

Barrels:: 15..31,


alldifferent(Barrels),

FirstSale #= A+B,

SecondSale #= C+D+E,

SecondSale #= FirstSale * 2,

member(A, Gallons),
member(B, Gallons),
member(C, Gallons),
member(D, Gallons),
member(E, Gallons),
member(Beer, Gallons),

labeling(Barrels).


