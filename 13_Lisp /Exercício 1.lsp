(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5) (< peso-kg 20))
     10)
    ((and (<= 5 idade-anos 12) (>= peso-kg 20))
     25)
    (t
     50)))

(defun ajusta-preco (preco-base nome-da-erva)
  (let ((nome-normalizado (string-downcase nome-da-erva)))
    (cond
      ((string= nome-normalizado "ginseng")
       (* preco-base 3.0))
      ((string= nome-normalizado "lótus")
       (* preco-base 1.5))
      (t
       preco-base))))

(defun preco-final (nome-da-erva preco-base peso-kg idade-anos)
  (let ((dosagem-calculada (calcula-dosagem peso-kg idade-anos)))
    (format t "-> Paciente: ~a anos, ~a kg. Dosagem base: ~a ml.~%"
            idade-anos peso-kg dosagem-calculada)
    (ajusta-preco preco-base nome-da-erva)))

;; Cálculo solicitado (Exercício 3)
(format t "Preço final para 'Lótus' (14 anos, 60kg, 10 moedas base): ~a moedas~%"
        (preco-final "Lótus" 10 60 14))
