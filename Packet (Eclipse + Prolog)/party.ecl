:-lib(fd).
:-lib(lists).


party(Guests, N):-



Guests = [_Mark, _Jack, _Michael, _Toby, _Adam, _Eli, _Jane, _Julia, _Sarah, _Michelle, _Kathleen, _Maya],
print(Guests),nl,
Guests:: 0..1,
_Mark+_Jack+_Michael+_Toby+_Adam+_Eli+_Jane+_Julia+_Sarah+_Michelle+_Kathleen+_Maya #= N,

_Friday = _Mark + _Michael + _Adam + _Eli + _Sarah,
_Saturday = _Jack + _Toby + _Jane + _Julia,
_Bothdays = _Michelle + _Kathleen + _Maya,
((_Friday #= 0, _Saturday + _Bothdays #> 0); (_Friday + _Bothdays #> 0, _Saturday #= 0)),

((_Mark #= 1, _Jane + _Julia + _Eli + _Michelle #> 0);(_Mark#= 0)),
((_Adam #= 1, _Adam + _Jane + _Eli #> 0); (_Adam#= 0)),
((_Eli #= 1, _Adam + _Toby + _Kathleen + _Mark #> 0); (_Eli#= 0)),
((_Jane #= 1, _Mark + _Kathleen + _Julia + _Michael + _Adam #> 0); (_Jane#= 0)),
((_Julia #= 1, _Adam + _Jane + _Eli #> 0); (_Julia#= 0)),
((_Sarah #= 1, _Michelle + _Maya + _Jack #> 0); (_Sarah#= 0)),


((_Michelle #= 1, _Sarah + _Toby + _Mark #> 0);(_Michelle#= 0)),
((_Kathleen #= 1, _Sarah + _Jane + _Eli + _Toby #> 0); (_Kathleen#= 0)),
((_Toby #= 1, _Eli + _Michelle #> 0); (_Toby#= 0)),
((_Maya #= 1, _Sarah + _Jack + _Michelle #> 0); (_Maya#= 0)),
((_Jack #= 1, _Adam + _Sarah #> 0); (_Jack#= 0)),
((_Michael #= 1, _Jack + _Maya + _Jane #> 0); (_Michael#= 0)),

_Mark+_Jack+_Michael+_Toby+_Adam+_Eli #= _Jane+_Julia+_Sarah+_Michelle+_Kathleen+_Maya,

_Mark + _Jane #<2,
_Kathleen + _Eli #< 2,
_Maya + _Sarah #< 2,
_Julia + _Toby #< 2,

((Democrat #= _Kathleen + _Julia + _Michael + _Eli, Democrat #> 0, 
Republican #= _Jane + _Maya + _Michelle + _Toby, Republican #= 0);
(Democrat #= _Kathleen + _Julia + _Michael + _Eli, Democrat #= 0, 
Republican #= _Jane + _Maya + _Michelle + _Toby, Republican #> 0)),

_Mark + _Jack + _Toby + _Eli #> 0,
_Maya + _Michelle + _Sarah + _Julia #> 0,

%labeling(Guests).



