
person(me).
bird(tweety).
fish(goldie).
worm(molie).
cat(silvester).

like(X, Y) :- bird(X), worm(Y).
like(X, Y) :- cat(X), bird(Y).
like(X, Y) :- friend(X, Y).
friend(silvester, me).


eat(X, Y) :- like(X, Y), friend(X,Z), Z\=Y.

