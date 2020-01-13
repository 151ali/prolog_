/*
TP logique N°01 : Programation logique avec PROLOG :
11:12:2019
*/
% table de données :

homme(albert).
homme(jean).
homme(paul).
homme(bertrand).
homme(louis).
homme(benoit).
femme(germaine).
femme(christiane).
femme(simone).
femme(marie).
femme(sophie).

pere(albert,jean).
pere(jean,paul).
pere(paul,bertrand).
pere(paul,sophie).
pere(jean,simone).
pere(louis,benoit).
mere(germaine,jean).
mere(christiane,simone).
mere(christiane,paul).
mere(simone,benoit).
mere(marie,bertrand). 
mere(marie,sophie).

% Definition des predicats :

parent(X,Y) :- pere(X,Y);mere(X,Y).


fils(X,Y) :- homme(X),parent(Y,X).
fils(X,Y) :- femme(X),parent(Y,X).

grand_pere(X,Y) :- pere(X,Z),parent(Z,Y).
grand_mere(X,Y) :- mere(X,Z),parent(Z,Y).

frere(X,Y) :- homme(X),(parent(Z,X),parent(Z,Y), X\==Y).




