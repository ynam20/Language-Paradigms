:- lib(lists).

:- lib(ic).


mastergrid(Grid):-

setUp(Grid),
solve(Grid). 


setUp(Grid):-

Grid = [A11,A12, A13, A14, A15, A16, A17, A18, 
A21,A22,A23,A24,A25,A26,A27,A28,
A31,A32,A33, A34,A35,A36,A37,A38,
A41,A42,A43,A44,A45,A46,A47,A48,
A51,A52,A53,A54,A55,A56,A57,A58,
A61,A62,A63,A64,A65,A66,A67,A68,
A71,A72,A73,A74,A75,A76,A77,A78,
A81,A82,A83,A84,A85,A86,A87,A88], 

Grid :: 0..1,

checkconstraintA([A,B,C,D,E,F,G,H], sum):-A

A+2*B+3*C+4*D+5*E+6*F+7*G+8*H #= sum.


solve(Grid):-

Grid = [A11,A12, A13, A14, A15, A16, A17, A18, 
A21,A22,A23,A24,A25,A26,A27,A28,
A31,A32,A33, A34,A35,A36,A37,A38,
A41,A42,A43,A44,A45,A46,A47,A48,
A51,A52,A53,A54,A55,A56,A57,A58,
A61,A62,A63,A64,A65,A66,A67,A68,
A71,A72,A73,A74,A75,A76,A77,A78,
A81,A82,A83,A84,A85,A86,A87,A88].

Grid :: 0..1,

checkconstraint([A31,A32,A33, A34,A35,A36,A37,A38], 5 ),
checkconstraint([A41,A42,A43,A44,A45,A46,A47,A48], 10),
checkconstraint([A51,A52,A53,A54,A55,A56,A57,A58], 29),
checkconstraint([A71,A72,A73,A74,A75,A76,A77,A78], 26),
checkconstraint([A11,A21, A31, A41, A51, A61, A71, A81], 6),
checkconstraint([A12,A22,A32,A42,A52,A62,A72,A82], 15),
checkconstraint([A13,A23,A33, A43,A53,A63,A73,A83], 28),
checkconstraint([A14,A24,A34,A44,A54,A64,A74,A84], 27),
checkconstraint([A15,A25,A35,A45,A55,A65,A75,A85], 30),
checkconstraint([A16,A26,A36,A46,A56,A66,A76,A86], 28),
checkconstraint([A17,A27,A37,A47,A57,A67,A77,A87], 6),
checkconstraint([A18,A28,A38,A48,A58,A68,A78,A88], 30),

labeling(Grid).





