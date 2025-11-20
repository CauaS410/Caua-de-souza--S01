(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defparameter *catalogo*
  (list
    (make-item :nome "Espada Amaldicoada"
               :tipo "Arma"
               :preco 100
               :forca-magica 120)

    (make-item :nome "Adaga Sombria"
               :tipo "Arma"
               :preco 80
               :forca-magica 60)

    (make-item :nome "Pocao de Cura"
               :tipo "Pocao"
               :preco 20
               :forca-magica 0)

    (make-item :nome "Amuleto do Caos"
               :tipo "Artefato"
               :preco 200
               :forca-magica 150)))




(defun adiciona-imposto (preco)
  "Aumenta preco em 15%."
  (* preco 1.15))

(defun bonus-maldicao (forca)
  "Aplica bonus de 50% se a forca-magica for maior que 80."
  (if (> forca 80)
      (* forca 1.5)
      forca))



(defun processa-venda (catalogo)
  "Filtra armas, aumenta preco com imposto e aplica bonus de maldicao."
  (let* (
      
         (armas (remove-if
                 (lambda (it)
                   (not (string= (item-tipo it) "Arma")))
                 catalogo))


         (armas-com-imposto
          (mapcar (lambda (it)
                    (make-item
                     :nome (item-nome it)
                     :tipo (item-tipo it)
                     :preco (adiciona-imposto (item-preco it))
                     :forca-magica (item-forca-magica it)))
                  armas))

    
         (resultado
          (mapcar (lambda (it)
                    (format nil "~a -> Nova forca magica: ~a"
                            (item-nome it)
                            (bonus-maldicao (item-forca-magica it))))
                  armas-com-imposto)))

    resultado))



;; TESTES

(dolist (it *catalogo*)
  (format t "~a (~a) - preco: ~a - forca: ~a~%"
          (item-nome it)
          (item-tipo it)
          (item-preco it)
          (item-forca-magica it)))

(dolist (linha (processa-venda *catalogo*))
  (format t "~a~%" linha))
