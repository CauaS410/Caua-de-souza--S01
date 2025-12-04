area(calculo_1, matematica).
area(calculo_2, matematica).
area(geometria_analitica, matematica).
area(algebra_linear, matematica).
area(fisica_1, exatas).
area(algoritmos, computacao).

creditos(calculo_1, 6).
creditos(calculo_2, 4).
creditos(geometria_analitica, 4).
creditos(algebra_linear, 6).
creditos(fisica_1, 4).
creditos(algoritmos, 4).

prerequisito(calculo_1, calculo_2).
prerequisito(calculo_1, fisica_1).
prerequisito(algebra_linear, calculo_2).

alto_impacto(D) :-
    creditos(D, C),
    C > 5,
    prerequisito(D, A),
    prerequisito(D, B),
    A \= B.

sem_dependentes(D) :-
    \+ prerequisito(D, _).

consulta(D) :-
    area(D, matematica),
    creditos(D, 4),
    sem_dependentes(D).
