10 NUMEROSECRETO = INT(RND * 100) + 1

20 INPUT "Chute um número de 1 a 100 "; numAdivinhado

30 IF NUMEROSECRETO = numAdivinhado THEN GOTO 100
40 IF NUMEROSECRETO > numAdivinhado THEN GOTO 60
50 IF NUMEROSECRETO < numAdivinhado THEN GOTO 80

60 PRINT "Tente um número maior."
70 GOTO 20

80 PRINT "Tente um número menor."
90 GOTO 20

100 PRINT "Acertou! Parabéns!"
110 END
