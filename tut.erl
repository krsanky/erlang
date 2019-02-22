-module(tut).
-export([double/1]).
-export([fac/1]).
-export([mult/2]).
-export([convert/2]).
-export([convert_length/1]).
-export([list_length/1]).

double(X) ->
	2 * X.

fac(1) ->
	1;
fac(N) ->
	N * fac(N - 1).

mult(X, Y) ->
	X * Y.

convert(M, inch) ->
	M / 2.54;
convert(N, centimeter) ->
	N * 2.54.

convert_length({inch, Y}) ->
	{centimeter, Y * 2.54};
convert_length({centimeter, X}) ->
	{inch, X / 2.54}.

list_length([]) ->
	0;
list_length([First | Rest]) ->
	1 + list_length(Rest).


