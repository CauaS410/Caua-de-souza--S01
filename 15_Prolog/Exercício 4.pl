area(calculo_1, matematica).
area(algoritmos, computacao).
area(estrutura_dados, computacao).
area(robotica, aplicacoes).
area(inteligencia_artificial, computacao).
area(introducao_web, aplicacoes).

prerequisito(algoritmos, estrutura_dados).
prerequisito(calculo_1, calculo_2).
prerequisito(estrutura_dados, inteligencia_artificial).
prerequisito(estrutura_dados, robotica).

disciplina_raiz(D) :-
    area(D, _),
    \+ prerequisito(_, D).

disciplina_folha(D) :-
    area(D, _),
    \+ prerequisito(D, _).
