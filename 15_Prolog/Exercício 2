area(calculo_1, fundamental).
area(algoritmos, fundamental).
area(estatistica, fundamental).
area(calculo_2, exatas).
area(estrutura_dados, computacao).
area(inteligencia_artificial, computacao).

prerequisito(algoritmos, estrutura_dados).
prerequisito(calculo_1, calculo_2).
prerequisito(estatistica, inteligencia_artificial).
prerequisito(estrutura_dados, inteligencia_artificial).

concluiu(joao, algoritmos).
concluiu(joao, estrutura_dados).
concluiu(joao, estatistica).
concluiu(joao, calculo_1).

concluiu(maria, algoritmos).
concluiu(maria, calculo_1).

falta_concluir(Aluno, Disc) :-
    prerequisito(Req, Disc),
    \+ concluiu(Aluno, Req).

aluno_apto(Aluno, Disc) :-
    area(Disc, Tipo),
    Tipo \= fundamental,
    \+ falta_concluir(Aluno, Disc).
