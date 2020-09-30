aluno(joao, paradigmas). 
aluno(maria, paradigmas).  
aluno(joel, lab2). 
aluno(joel, estruturas).  
frequenta(joao, feup). 
frequenta(maria, feup).  
frequenta(joel, ist). 
professor(carlos, paradigmas). 
professor(ana_paula, estruturas).  
professor(pedro, lab2). 
funcionario(pedro, ist). 
funcionario(ana_paula, feup).  
funcionario(carlos, feup).

/*a*/
aluno_de(A, X) :- professor(X, Y), aluno(A, Y), funcionario(X, F), frequenta(A, F).

/*b*/
pertence(P, F) :- funcionario(P, F).
pertence(P, F) :- frequenta(P, F).

/*c*/
colega(A, B) :- aluno(A, D), aluno(B, D), A \= B.
colega(A, B) :- frequenta(A, F), frequenta(B, F), A \= B.
colega(A, B) :- funcionario(A, F), funcionario(B, F), A \= B.
