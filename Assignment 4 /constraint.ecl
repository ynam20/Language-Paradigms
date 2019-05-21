:- lib(lists).
:- lib(fd).
:- lib(fd_search).


sentries(Castle) :-
	setup(Castle),
	solve(Castle),
	printC(Castle).

setup(Castle) :-
	/* a list of 12 variables */
	Castle = [WC,NWC, NEC, EC, SEC, SWC, NW, N, NE, SE, S, SW], 

	Castle :: 0..20,
	
	/* sum of the variables is 12 - note the #= -
	it must be #= so that this is a delayable integer
	constraint the others are #> #< #>= #=< #\=  

	a delayable constraint is one that is not necessarily evaluated 
	when it	is first set up
	*/ 
	NWC + N + NEC #= NEC + NE + EC,
	NEC + NE + EC #= EC + SE + SEC, 
	EC + SE + SEC #= SWC + SW + WC,
	SWC + SW + WC #= NWC + N + NEC,
	alldifferent(Castle). 

	

	/* solve the problem by labeling the variables */
solve(Castle) :- 

Castle = [WC,NWC, NEC, EC, SEC, SWC, NW, N, NE, SE, S, SW], 

C #= WC + NWC + NEC + EC + SEC + SWC + NW + N + NE + SE + S + SW,
minimize(labeling(Castle), C).
	

printC(Castle) :-
	Castle = [NW,N,NE,E,SE,S,SW,W],
	printf("%3d%3d%3d\n", [NW,N,NE]),
	printf("%3d   %3d\n", [ W,   E]),
	printf("%3d%3d%3d\n", [SW,S,SE]).

