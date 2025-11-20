(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 5) (< peso 20)) 10)
    ((and (>= idade 5) (<= idade 12) (>= peso 20)) 25)
    (t 50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng") (* 3.0 preco-base))
    ((string= nome-da-erva "Lotus") (* 1.5 preco-base))
    (t preco-base)))
    
(format t "Dosagem: ~a~%" (calcula-dosagem 60 14))
(format t "Preco final: ~a~%" (ajusta-preco 10 "Lotus"))

(format t "Dosagem: ~a~%" (calcula-dosagem 15 4))
(format t "Preco final: ~a~%" (ajusta-preco 15 "Ginseng"))

(format t "Dosagem: ~a~%" (calcula-dosagem 40 10))
(format t "Preco final: ~a~%" (ajusta-preco 20 "Ginseng"))
