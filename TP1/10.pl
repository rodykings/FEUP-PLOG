comprou(joao, honda).  
ano(honda, 1997).  
comprou(joao, uno).
ano(uno, 1998).  
valor(honda, 2000).  
valor(uno, 7000).

pode_vender(P, C, A):-
    comprou(P, C),
    valor(C, V),
    V < 10000,
    ano(C, AnoCarro),
	A >= AnoCarro + 10.