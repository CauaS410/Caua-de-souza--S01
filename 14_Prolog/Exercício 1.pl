filho(zeus, cronos).
filho(zeus, reia).
filho(hades, cronos).
filho(hades, reia).
filho(poseidon, cronos).
filho(poseidon, reia).

domina(zeus, ceu).
domina(hades, submundo).
domina(poseidon, mar).

divindade_olimpica(X) :- 
    filho(X, cronos), 
    (
        domina(X, submundo); 
        domina(X, ceu); 
        domina(X, mar)
    ).
