10 INPUT "Informe a altura em metros: "; ALT
20 INPUT "Informe o peso em quilogramas: "; PESO

30 IMC = PESO / (ALT * ALT)
40 IMC = INT(IMC * 100 + 0.5) / 100

50 PRINT "O IMC e: "+ IMC

100 END
