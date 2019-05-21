:- lib(lists).
:- lib(fd).
:- lib(fd_search).


solvehay(Weights):-

Weights = [A,B,C,D,E],
Weights :: 0..121,

Combinedweight = [110,112,113,114,115,116,117,118,120,121],
Combinedweightvars = [AB, AC, AD, AE, BC, BD, BE, CD, CE, DE],
Combinedweightvars :: 110..121,

alldifferent(Combinedweightvars),

A+B #= AB,

A+C #= AC,

A+D #= AD,

A+E #= AE,

B+C #= BC,

B+D #= BD,

B+E #= BE,

C+D #= CD,

C+E #= CE,

D+E #= DE,
member(AB, Combinedweight),
member(AC, Combinedweight),
member(AD, Combinedweight),
member(AE, Combinedweight),
member(BC, Combinedweight),
member(BD, Combinedweight),
member(BE, Combinedweight),
member(CD, Combinedweight),
member(CE, Combinedweight),
member(DE, Combinedweight),

labeling(Weights).