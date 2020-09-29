

/*males*/

male('Aldo Burrows').
male(michael_scofield).
male(lincoln_burrows).
male(lj_burrows).

/*females*/

female(christina_scofield).
female(lisa_rix).
female(sara_tancredi).
female(ella_scofield).

parent(aldo_burrows, michael_scofield).
parent(aldo_burrows, lincoln_burrows).

parent(christina_scofield, michael_scofield).
parent(christina_scofield, lincoln_burrows).

parent(lisa_rix, lj_burrows).
parent(lincoln_burrows, lj_burrows).

parent(michael_scofield, ella_scofield).
parent(sara_tancredi, ella_scofield).


/*1. a
?- parent(X, michael_scofield).
*/

/*1. b
?- parent(aldo_burrows, X).
*/