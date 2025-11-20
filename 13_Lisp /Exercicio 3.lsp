(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defparameter *catalogo*
  (list
   (make-item :nome "Espada do Desespero"
              :tipo "Arma"
              :preco 500
              :forca-magica 100)
   (make-item :nome "Adaga de Mercúrio"
              :tipo "Arma"
              :preco 150
              :forca-magica 50)
   (make-item :nome "Poção de Cura"
              :tipo "Pocao"
              :preco 50
              :forca-magica 0)
   (make-item :nome "Amuleto de Sombra"
              :tipo "Artefato"
              :preco 300
              :forca-magica 75)
   (make-item :nome "Cálice Amaldiçoado"
              :tipo "Artefato"
              :preco 700
              :forca-magica 90)))

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (if (> forca 80)
      (* forca 1.5)
      forca))

(defun processa-venda (catalogo)
  (let* (
         (armas-filtradas
          (remove-if-not
           (lambda (i)
             (string-equal (item-tipo i) "Arma"))
           catalogo))
         
         (armas-com-imposto
          (mapcar
           (lambda (i)
             (make-item :nome (item-nome i)
                        :tipo (item-tipo i)
                        :preco (adiciona-imposto (item-preco i))
                        :forca-magica (item-forca-magica i)))
           armas-filtradas))
         
         (relatorio-final
          (mapcar
           (lambda (i)
             (format nil "~a | Preço Ajustado: ~a | Força Mágica Ajustada: ~a"
                     (item-nome i)
                     (item-preco i)
                     (bonus-maldicao (item-forca-magica i))))
           armas-com-imposto)))
    
    relatorio-final))

(format t "--- Relatório de Vendas (Armas) ---~%")
(let ((resultados (processa-venda *catalogo*)))
  (dolist (r resultados)
    (format t "~a~%" r)))
