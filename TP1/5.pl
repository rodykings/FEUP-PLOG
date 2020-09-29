/*João,  Maria,  Ana,
  casa,  cão,  xadrez,
    damas,  ténis,  natação,
      apartamento,  gato,
        tigre,  homem,  mulher,
          animal, mora_em,
           gosta_de, jogo, desporto*/

homem(joao).
mulher(maria).
mulher(ana).

mora_em(joao, apartamento).
mora_em(maria, casa).
mora_em(ana, casa).

animal(cao).
animal(gato).
animal(tigre).

jogo(xadrez).
jogo(damas).

desporto(tenis).
desporto(natacao).

gosta_de(maria, tenis).
gosta_de(maria, tigre).
gosta_de(maria, xadrez).
gosta_de(joao, tenis).
gosta_de(joao, cao).
gosta_de(ana, gato).
gosta_de(ana, damas).
gosta_de(ana, natacao).


gosta_de_animais(X) :- gosta_de(X, Y), animal(Y).
gosta_de_desportos(X) :- gosta_de(X, Y), desporto(Y).
gosta_de_jogos(X) :- gosta_de(X, Y), jogo(Y).

/*queries*/
% ?- mora_em(X, apartamento), gosta_de_animais(X).
% ?- mora_em(maria, casa), mora_em(joao, casa), gosta_de_desportos(maria),gosta_de_desportos(joao).
% ?- gosta_de_desportos(X), gosta_de_jogos(X).
% ?- gosta_de(X, tenis), gosta_de(X, tigre), mulher(X).