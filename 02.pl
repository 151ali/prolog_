% La base de données :

hors_d_oeuvre(artichauts).
hors_d_oeuvre(crevettes).
hors_d_oeuvre(oeufs).
viande(grillade_de_oeuf).
viande(poulet).
poisson(loup).
poisson(sole).
dessert(glace).
dessert(tarte).
dessert(fraises).

% N is N1 + N2 + N3. 

plat(X) :- viande(X);poisson(X).

repas(X,Y,Z) :- hors_d_oeuvre(X),plat(Y),dessert(Z).



/*
*  2eme Partie :
*/
calories(artichauts, 150).
calories(crevettes, 250).
calories(oeufs, 200).
calories(grillade-de-boeuf, 500).
calories(poulet, 430).
calories(loup, 250).
calories(sole, 200).
calories(glace, 300).
calories(tarte, 400).
calories(fraises, 250).

/* normalement :p */
repas(X,Y,Z,VAL) :- repas(X,Y,Z),calories(X,N1),calories(Y,N2),calories(Z,N3),VAL is N1+N2+N3.



/*
* factorielle 
*/

fact(0,1).
fact(N,RES):-
	/* base */
	N > 0, 
	X1 is N-1,
	/* Cas general */
	fact(X1,Z),
	RES is Z * N	
.

/*
* Fibonacci 
*/
fibo(0,1).
fibo(1,1).

fibo(N,RES):- 

	X is N - 1,
	Y is N - 2,

	fibo(X,RES1),
	fibo(Y,RES2),

	RES is RES1 + RES2
.

% donne tt valeur Z compris entre X et Y .
% use between(X,Y,Z).

/*
* TODO : suit de Syracuse
*/

pair(X) :-
	X mod 2 =:= 0
.
