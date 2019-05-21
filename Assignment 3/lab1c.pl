


different([]).
different([First|Rest]):- \+member(First, Rest), different(Rest).

differentR([]).
differentR([First|Rest]):- different(First), differentR(Rest).

flattenit([], []).
flattenit([first|tail], second) :- append(first, third, As), flattenit(Ls, Ws).


