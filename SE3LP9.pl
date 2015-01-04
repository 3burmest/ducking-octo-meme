:- [read_sent]. 

%%%Rules%%%
%rule(Pattern, Response).
<<<<<<< HEAD

%An Weihnachten finde ich nicht die beste Frage, bringt das Gespräch auch nicht weiter.
%rule([ich, habe, Menge, Art, gegessen, '.'], _,  [warum, hast, du, Menge, Art, gegessen, '?']).
rule([ich, habe, _, _, gegessen, '.'], [hat, es, geschmeckt, '?']).
rule([ja, es, war, gut, '.'], [wer, hat, es, gekocht, '?']).
rule([nein, es, war, nicht, gut, '.'], [wer, hat, es, gekocht, '?']).
rule([ich, habe, Etwas, getan, '.'], [warum, hast, du, Etwas, getan, '?']).
rule([hallo, '.'], [guten, tag, '.']).
rule([wie, geht, es, dir, '?'], [gut, '.']).
rule(Pattern, [erzähl, mir, mehr, von, Element, '.']):-
	member(Element, Pattern),
	member(Element, [vater, mutter, bruder, schwester, tochter, sohn, oma, opa]).
	%für automatische Pronomenumwandlung
	%nth0(Index, Patter, Element),
	%Index1 is Index -1,
	%nth0(Index1, Patter, PronomenAlt),
	%pronomen(PronomenAlt, Pronomen).

%Abschluss:
rule(_, [oh, erzähl, mir, mehr, darüber, '.']).

%"Erzähl mir mehr" gibt fidne ich mehr Sinn und auch mehr Text vom Gesprächspartner 
%rule(_, [das, habe, ich, nicht, verstanden, '.', sag, das, bitte, nochmal, in, anderen, woertern, '.']).
=======
rule([ich, habe, Menge, Art, gegessen, '.'], [warum, hast, du, Menge, Art, gegessen, '?']).
rule([ich, habe, Einen, Kuchen, gegessen, '.'], [hat, er, geschmeckt, '?']).
rule([ich, habe, Etwas, getan, '.'], [warum, hast, du, Etwas, getan, '?']).
rule([hallo, '.'], [guten, tag, '.']).
rule([wie, geht, es, dir, '?'], [gut, '.']).

%Abschluss:
rule(_, [das, habe, ich, nicht, verstanden, '.', sag, das, bitte, nochmal, in, anderen, woertern, '.']).
>>>>>>> 65cf4e2dc73a145db67a32226f0b454e0a6a1388

%1.3/1.4
vergleich(Eingabe, Ausgabe):-
	rule(Eingabe, Ausgabe), !.

<<<<<<< HEAD
%1.5
%%%% Bei mir funktionieren sämtliche String-Prädikate hier nicht (existieren angeblich nicht?)
%Wandelt vom User benutzte Pronomina in die korrekte Form für eine Antwort um.
%pronomen(ich, du).
%pronomen(Alt, Neu):-
%	text_to_string(Alt, AString),
%	string_chars(Alt, Liste),
%	select(m, Liste, d, LNeu),
%	atomics_to_string(LNeu, Neu).

%1.9
zyklus :-
	write_ln([hallo, wie, waren, deine, feiertage]),
=======
%1.9
zyklus :-
>>>>>>> 65cf4e2dc73a145db67a32226f0b454e0a6a1388
	repeat,
	read_sentence(S),
	vergleich(S, R),
	echo(R), !.

echo(X) :-	last_input(X), !.
echo(X) :-	write_ln(X), fail.

last_input(end).
