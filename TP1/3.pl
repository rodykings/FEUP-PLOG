/*Os Maias, livro, Eça de Queiroz, português,
 inglês, romance, escreveu, autor, nacionalidade, tipo, ficção*/


livro(os_maias).
autor(eca_queiroz).
escreveu(eca_queiroz, os_maias).
nacionalidade(eca_queiroz, portugues).
tipo(os_maias, ficcao).
tipo(os_maias, romance).

escreve_tipo(X, Y) :- escreveu(X, L), tipo(L, Y).


/*queries*/
% ?- escreveu(X, os_maias).
% ?- escreve_tipo(Y, romance), nacionalidade(Y, portugues).
% ?- escreve_tipo(Z, ficcao), escreve_tipo(Z, Y), Y \= ficcao. 