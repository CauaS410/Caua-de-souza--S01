(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defparameter *catalogo*
  (list
   (make-criatura :nome "Peeper"
                  :ambiente "Safe Shallows"
                  :periculosidade "Baixa"
                  :vida-media 30)
   (make-criatura :nome "Reaper Leviathan"
                  :ambiente "Mountains"
                  :periculosidade "Alta"
                  :vida-media 150)
   (make-criatura :nome "Crabsnake"
                  :ambiente "Deep"
                  :periculosidade "Media"
                  :vida-media 45)
   (make-criatura :nome "Warper"
                  :ambiente "Deep"
                  :periculosidade "Alta"
                  :vida-media 120)
   (make-criatura :nome "Holefish"
                  :ambiente "Kelp Forest"
                  :periculosidade "Baixa"
                  :vida-media 25)))

(defun filtra-por-perigo (catalogo)
  (remove-if-not
   (lambda (c)
     (not (string-equal (criatura-periculosidade c) "Baixa")))
   catalogo))

(defun relatorio-profundidade (catalogo)
  (let ((deep-creatures
          (remove-if-not
           (lambda (c)
             (string-equal (criatura-ambiente c) "Deep"))
           catalogo)))
    
    (mapcar
     (lambda (c)
       (format nil "~a: Vive em ~a"
               (criatura-nome c)
               (criatura-ambiente c)))
     deep-creatures)))

(format t "--- 3. Filtro de Perigo ---~%")
(let ((perigosas (filtra-por-perigo *catalogo*)))
  (dolist (c perigosas)
    (format t "~a (~a)~%" (criatura-nome c) (criatura-periculosidade c))))

(format t "~%--- 4. Relatório de Profundidade ---~%")
(let ((relatorio (relatorio-profundidade *catalogo*)))
  (dolist (item relatorio)
    (format t "~a~%" item)))
