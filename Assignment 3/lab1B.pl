%
% All people that are solvent and are smart are happy. Those people that
% can read are smart. John can read. If someone is wealthy
% they are solvent. Happy people have exciting lives. John is wealthy.
%
% Is John happy?
%
%  Note: DO NOT USE read as the predicate for reading, it is a builtin and
%  your program will not work correctly!  Use a different name.

happy(A) :- solvent(A), smart(A).

solvent(A):- wealthy(A).
wealthy(John).

smart(A):- canRead(A).
canRead(John).
