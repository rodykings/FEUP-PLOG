/*a - factorial*/
factorial(0,1).
factorial(N,F):- 
    N > 0,
    N1 is N - 1,
    factorial(N1, F1),
    F is F1 * N.

/*COM RECURSIVADADE DE CAUDA*/
factorial2(N,F):-
	factorial2_aux(N,1,F).
	
factorial2_aux(0,F,F).
factorial2_aux(N,Acc,F):-
	N > 0,
	N1 is N - 1,
	Acc1 is Acc * N,
	factorial2_aux(N1,Acc1,F).

/*b - FIBONNACI*/
fibonnaci(0, 0).
fibonnaci(1, 1).
fibonnaci(N, F):-
    N > 1,
    N1 is N-1, fibonnaci(N1, F1),
    N2 is N-2, fibonnaci(N2, F2),
    F is F1+F2.