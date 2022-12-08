 % Ejercicio 1. %
pertenece(X,[X|_]).
pertenece(X,[_|L]) :- pertenece(X,L).

 % Ejercicio 2. %
size([], 0).

size([_|Xs], R):-
          size(Xs, L2),
          R is L2 + 1.
 % Ejercicio 3. %
conc(A,B,C) :- A=[], C=B.
conc(A,B,C) :- A=[X|D], conc(D,B,E), C=[X|E].
 % Ejercicio 4. %
 eliminar([],_,[]).
eliminar([X|L1],Y,L2) :-
X=Y,
eliminar(L1,Y,L2).
eliminar([X|L1],Y,[X|L2]) :-
not(X=Y),
eliminar(L1,Y,L2).
  % Ejercicio 5. %
  agregar(X, L, R):- append([X], L, R).
   % Ejercicio 6. %

   imp_par([ ],[ ],[ ]).
imp_par([X|XS],[X|PA],IM):-A is X mod 2,A=0,imp_par(XS,PA,IM).
imp_par([X|XS],PA,[X|IM]):-B is X mod 2,B>0,imp_par(XS,PA,IM).

 % Ejercicio 7. %
 ascendente([]).
  ascendente([X,Y|XS]):- X<Y;Y=:=nil,ascendente(XS).

   % Ejercicio 8. %
  descendente([]).
descendente([X,Y|XS]):- X>Y;Y=:=nil,descendente(XS).

   % Ejercicio 9. %
   aplanar([],[]).
aplanar([X|L],S):-is_list(X),
aplanar(X,S1),
aplanar(L,S2),
append(S1,S2,S),!.
aplanar([X|L],S):-not(is_list(X)),
aplanar(L,S1),
S=[X|S1].

menorHead([],[]).
menorHead([_],[]).
menorHead([X1,X2|XS],[X2|L]):- X1>X2, menorHead([X1|XS],L).
menorHead([X1,X2|XS],L):-X1<X2,menorHead([X1|XS],L).
     % Ejercicio 11. %
     mayorHead([],[]).
mayorHead([_],[]).
mayorHead([X1,X2|XS],[X2|X]):- X1<X2, mayorHead([X1|XS],X).
mayorHead([X1,X2|XS],X):-X1>X2,mayorHead([X1|XS],X).
      % Ejercicio 12. %
      invertir([],[]).
invertir([X|XS],Z):-invertir(XS,T),append(T,[X],Z).
