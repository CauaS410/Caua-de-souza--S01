;; 1. Funcao pura: calcula-dosagem
(defun calcula-dosagem (peso-kg idade-anos)
  (cond
    ((or (< idade-anos 5)
         (< peso-kg 20))
     10)
    ((and (>= idade-anos 5)
          (<= idade-anos 12)
          (>= peso-kg 20))
     25)
    (t 50)))

;; 2. Funcao pura: ajusta-preco
(defun ajusta-preco (preco-base nome-da-erva)
  (cond
    ((string= nome-da-erva "Ginseng")
     (* preco-base 3.0))
    ((string= nome-da-erva "Lotus")
     (* preco-base 1.5))
    (t preco-base)))

;; 3. Exemplo pedido: Lotus, preco base 10, idade 14, peso 60
(let* ((erva "Lotus")
       (preco-base 10)
       (idade 14)
       (peso 60)
       (dosagem (calcula-dosagem peso idade))
       (preco-final (ajusta-preco preco-base erva)))
  (format t "Paciente: ~a anos, ~a kg~%" idade peso)
  (format t "Erva: ~a~%" erva)
  (format t "Dosagem: ~a ml~%" dosagem)
  (format t "Preco final: ~a moedas~%" preco-final))

;; 4. Testes extras 

;; Caso 1: idade < 5 OU peso < 20 --> dosagem 10
(format t "~%Caso 1 (idade < 5): Dosagem = ~a ml~%"
        (calcula-dosagem 30 3))
(format t "Preco com Lotus = ~a~%"
        (ajusta-preco 10 "Lotus"))

;; Caso 2: idade entre 5 e 12 AND peso >= 20 --> dosagem 25
(format t "~%Caso 2 (idade 10, peso 25): Dosagem = ~a ml~%"
        (calcula-dosagem 25 10))
(format t "Preco com Ginseng = ~a~%"
        (ajusta-preco 20 "Ginseng"))
