10 INPUT "Adicione a nota da NP1: "; NP1
20 INPUT "Adicione a nota da NP2: "; NP2
30 NP1 = VAL(NP1)
40 NP2 = VAL(NP2)
50 MEDIA = (NP1 + NP2) / 2

70 IF MEDIA > 60 THEN GOTO 200
80 IF MEDIA < 30 THEN GOTO 300

100 PRINT "Você fará a NP3."

110 INPUT "Informe a nota da NP3: "; NP3
120 NP3 = VAL(NP3)
130 MEDIA = (MEDIA + NP3) / 2
140 PRINT "Nova média: "; MEDIA


150 IF MEDIA > 50 THEN GOTO 400 ELSE GOTO 500

200 PRINT "Resultado: Aprovado direto."
210 GOTO 999

300 PRINT "Resultado: Reprovado direto."
310 GOTO 999

400 PRINT "Resultado: Aprovado pela NP3."
410 GOTO 999

500 PRINT "Resultado: Reprovado na NP3."

999 END
