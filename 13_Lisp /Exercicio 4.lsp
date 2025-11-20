(defstruct ocorrencia
  nome
  ritual
  nivel-medo
  agentes-enviados)

;; 2. Funcao Recursiva: soma-medo-recursiva 

(defun soma-medo-recursiva (lista-occ)
  (if (null lista-occ)
      0
      (+ (ocorrencia-nivel-medo (car lista-occ))
         (soma-medo-recursiva (cdr lista-occ)))))

;; 3. Funcao de Alto Nivel: analise-final 

(defun analise-final (lista-occ)
  (let* ((total-medo (soma-medo-recursiva lista-occ))
         (qtd (length lista-occ))
         (media (/ total-medo qtd)))
    
    ;; Filtra ocorrencias criticas
    (let ((criticas
            (mapcar #'ocorrencia-nome
                    (remove-if-not
                     (lambda (o)
                       (and (> (ocorrencia-agentes-enviados o) 3)
                            (> (ocorrencia-nivel-medo o) media)))
                     lista-occ))))
      
      criticas)))

;; 4. Teste Final 

(let ((ocorrencias
        (list
         (make-ocorrencia :nome "Banimento Lunar"
                          :ritual "Lua Nova"
                          :nivel-medo 60
                          :agentes-enviados 2)

         (make-ocorrencia :nome "Chamado Abissal"
                          :ritual "Sangue"
                          :nivel-medo 95
                          :agentes-enviados 5)

         (make-ocorrencia :nome "Manifestacao Sombria"
                          :ritual "Vela Negra"
                          :nivel-medo 82
                          :agentes-enviados 4)

         (make-ocorrencia :nome "Ressonancia Perdida"
                          :ritual "Eco Astral"
                          :nivel-medo 40
                          :agentes-enviados 1)

         (make-ocorrencia :nome "Cantico Proibido"
                          :ritual "Coral Arcano"
                          :nivel-medo 88
                          :agentes-enviados 6))))
  
  (format t "Ocorrencias criticas: ~a~%"
          (analise-final ocorrencias)))
