filho(cronos, urano).
filho(cronos, gaia).
filho(reia, urano).
filho(reia, gaia).

filho(zeus, cronos).
filho(zeus, reia).
filho(hera, cronos).
filho(hera, reia).
filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).

filho(ares, zeus).
filho(ares, hera).
filho(hefesto, zeus).
filho(hefesto, hera).

domina(zeus, ceu).
domina(zeus, raio).
domina(zeus, justica).
domina(poseidon, mar).
domina(poseidon, terremotos).
domina(hades, submundo).
domina(atena, sabedoria).

habita(zeus, olimpo).
habita(poseidon, olimpo).
habita(atena, olimpo).
habita(hades, submundo).

divindade_olimpica(X) :- 
    filho(X, cronos), 
    (domina(X, submundo); domina(X, ceu); domina(X, mar)).

deus_maior(Deus) :-
    habita(Deus, olimpo),
    domina(Deus, D1),
    domina(Deus, D2),
    D1 \= D2.

irmaos_germanos(A, B) :-
    filho(A, Pai),
    filho(B, Pai),
    filho(A, Mae),
    filho(B, Mae),
    Pai \= Mae,
    A \= B.

ancestral(A, D) :- 
    filho(D, A).

ancestral(A, D) :- 
    filho(Z, A), 
    ancestral(Z, D).
