filho(zeus, cronos).
filho(zeus, reia).
filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).

domina(zeus, ceu).
domina(zeus, trovao).  
domina(hades, submundo).
domina(poseidon, mar).

habita(zeus, olimpo).
habita(poseidon, mar).
habita(hades, submundo).

divindade_olimpica(X) :- 
    filho(X, cronos), 
    (domina(X, submundo); domina(X, ceu); domina(X, mar)).

deus_maior(Deus) :-
    habita(Deus, olimpo),
    domina(Deus, D1),
    domina(Deus, D2),
    D1 \= D2.
