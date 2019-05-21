
:- lib(lists).
:- lib(fd).
:- lib(fd_search).




setup(Teas) :-
	Teas = [First, Second, Last],

	teas :: 0..20,

	First + Second + Last #= 20,

	(First * 30) + (Second * 27) + (Last* 21) #= 570,

	minimize(labeling(Teas), First).