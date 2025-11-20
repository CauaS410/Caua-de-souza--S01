;; 1. Definicao da estrutura
(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

;; 2. Catalogo inicial (4 criaturas no minimo)
(defparameter *catalogo*
  (list
    (make-criatura :nome "Safe Shallows Fish"
                   :ambiente "Shallows"
                   :periculosidade "Baixa"
                   :vida-media 3)

    (make-criatura :nome "Reaper Leviathan"
                   :ambiente "Open Ocean"
                   :periculosidade "Alta"
                   :vida-media 50)

    (make-criatura :nome "Ghost Ray"
                   :ambiente "Deep"
                   :periculosidade "Media"
                   :vida-media 12)

    (make-criatura :nome "Crabsquid"
                   :ambiente "Deep"
                   :periculosidade "Alta"
                   :vida-media 20)))

;; 3. HOF: filtro por perigo
(defun filtra-por-perigo (catalogo)
  "Retorna apenas criaturas cuja periculosidade NAO seja 'Baixa'."
  (remove-if (lambda (c)
               (string= (criatura-periculosidade c) "Baixa"))
             catalogo))

;; 4. Mapemento: relatorio apenas criaturas do ambiente Deep
(defun relatorio-profundidade (catalogo)
  (let ((apenas-deep
         (remove-if (lambda (c)
                      (not (string= (criatura-ambiente c) "Deep")))
                    catalogo)))
    (mapcar (lambda (c)
              (format nil "[~a]: Vive em [~a]"
                      (criatura-nome c)
                      (criatura-ambiente c)))
            apenas-deep)))


;; TESTES

(dolist (c *catalogo*)
  (format t "~a (~a) - perigo: ~a~%"
          (criatura-nome c)
          (criatura-ambiente c)
          (criatura-periculosidade c)))

(dolist (c (filtra-por-perigo *catalogo*))
  (format t "~a - perigo: ~a~%"
          (criatura-nome c)
          (criatura-periculosidade c)))

(dolist (linha (relatorio-profundidade *catalogo*))
  (format t "~a~%" linha))
