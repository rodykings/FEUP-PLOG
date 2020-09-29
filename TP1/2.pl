/*pilots*/
pilot(lamb).
pilot(besenyei).
pilot(chambliss).
pilot(maclean).
pilot(mangold).
pilot(jones).
pilot(bonhomme).

/*teams*/
team(breitling).
team(red_bull).
team(mediterranean_racing_team).
team(cobra).
team(matador).

/*planes*/
plane(mx2).
plane(edge540).

/*circuits*/
circuit(istanbul).
circuit(budapest).
circuit(porto).

/*gates*/
gates(istanbul, 9).
gates(budapest, 6).
gates(porto, 5).

/*pilot-team*/
from(lamb, breitling).
from(besenyei, red_bull).
from(chambliss, red_bull).
from(maclean, mediterranean_racing_team).
from(mangold, cobra).
from(jones, matador).
from(bonhomme, matador).

/*pilot-plane*/
has(lamb, mx2).
has(besenyei, edge540).
has(chambliss, edge540).
has(maclean, edge540).
has(mangold, edge540).
has(jones, edge540).
has(bonhomme, edge540).

/*pilot_wons*/
pilot_won(jones, porto).
pilot_won(mangold, budapest).
pilot_won(mangold, istanbul).

team_won(T,C) :- circuit(C), pilot(X), team(T), pilot_won(X,C), from(X, T).

/*Queries*/
% ?- pilot_won(X, porto).
% ?- team_won(X, porto).
% ?- pilot_won(X, C), pilot_won(X, F), C @< F.
% ?- gates(C, X), X>8.
% ?- has(P, X), X\=edge540.