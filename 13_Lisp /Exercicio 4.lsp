(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

(defparameter *lista-ocorrencias*
  (list
   (make-ocorrencia :nome "Mansão Sombria"
                    :ritual "Invocação"
                    :nivel-medo 90
                    :agentes-enviados 2)
   (make-ocorrencia :nome "Fenda Dimensional"
                    :ritual "Portais"
                    :nivel-medo 150
                    :agentes-enviados 5)
   (make-ocorrencia :nome "Bosque Murmurante"
                    :ritual "Assombro"
                    :nivel-medo 40
                    :agentes-enviados 1)
   (make-ocorrencia :nome "Templo Submerso"
                    :ritual "Sacrifício"
                    :nivel-medo 110
                    :agentes-enviados 4)
   (make-ocorrencia :nome "Prisão Esquecida"
                    :ritual "Contenção"
                    :nivel-medo 80
                    :agentes-enviados 3)))

(defun soma-medo-recursiva (lista-ocorrencias)
  (if (null lista-ocorrencias)
      0
      (+ (ocorrencia-nivel-medo (car lista-ocorrencias))
         (soma-medo-recursiva (cdr lista-ocorrencias)))))

(defun analisa-final (lista-ocorrencias)
  (let* (
         (soma-total (soma-medo-recursiva lista-ocorrencias))
         (quantidade (length lista-ocorrencias))
         (media (if (zerop quantidade) 0 (/ soma-total quantidade)))
         
         (ocorrencias-criticas
          (remove-if-not
           (lambda (o)
             (and (> (ocorrencia-agentes-enviados o) 3)
                  (> (ocorrencia-nivel-medo o) media)))
           lista-ocorrencias))
         
         (nomes-criticos
          (mapcar #'ocorrencia-nome ocorrencias-criticas)))
    
    (format t "------------------------------------------~%")
    (format t "Soma Total de Medo: ~a~%" soma-total)
    (format t "Total de Ocorrências: ~a~%" quantidade)
    (format t "Média de Nível-Medo: ~a~%" media)
    (format t "------------------------------------------~%")
    (format t "Ocorrências Críticas (Nomes):~%")
    (dolist (nome nomes-criticos)
      (format t "- ~a~%" nome))
    
    nomes-criticos))

(analisa-final *lista-ocorrencias*)
