10 LET numGerado = INT(RND() * 101)

20 INPUT "De 1 a 100, qual o número? "; numAdivinhado

30 IF numGerado = numAdivinhado THEN GOTO 190
40 IF numGerado > numAdivinhado THEN GOTO 70
50 IF numGerado < numAdivinhado THEN GOTO 90

70 PRINT "Tente um número maior."
80 GOTO 20

90 PRINT "Tente um número menor."
100 GOTO 20

190 PRINT "Acertou! Parabéns!"
200 END
