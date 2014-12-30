%%%Rules%%%
%rule(Pattern, Response).
rule([ich, habe, Menge, Art, gegessen, '.'], [warum, hast, du, Menge, Art, gegessen, '?']).
rule([ich, habe, Einen, Kuchen, gegessen, '.'], [hat, er, geschmeckt, '?']).
rule([ich, habe, Etwas, getan, '.'], [warum, hast, du, Etwas, getan, '?']).
rule([hallo, '.'], [guten, tag, '.']).
rule([wie, geht, es, dir, '?'], [gut, '.']).

%Abschluss:
rule(_, [das, habe, ich, nicht, verstanden, '.', sag, das, bitte, nochmal, in, anderen, woertern, '.']).

%1.3/1.4
vergleich(Eingabe, Ausgabe):-
	rule(Eingabe, Ausgabe), !.

%1.9
zyklus :-
	repeat,
	read_sentence(S),
	vergleich(S, R),
	echo(R), !.

echo(X) :-	last_input(X), !.
echo(X) :-	write_ln(X), fail.

last_input(end).
