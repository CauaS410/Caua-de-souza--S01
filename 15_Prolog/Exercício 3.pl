area(algoritmos, computacao).
area(estrutura_dados, computacao).
area(banco_dados, computacao).
area(calculo_1, matematica).
area(algebra_linear, matematica).

concluiu(lucas, algoritmos).
concluiu(lucas, estrutura_dados).

concluiu(maria, algoritmos).
concluiu(maria, calculo_1).

concluiu(joao, algoritmos).

especialista_comp(Aluno) :-
    concluiu(Aluno, D1),
    area(D1, computacao),
    concluiu(Aluno, D2),
    area(D2, computacao),
    D1 \= D2.

deficiencia_mat(Aluno) :-
    concluiu(Aluno, _),
    \+ (concluiu(Aluno, D), area(D, matematica)).
