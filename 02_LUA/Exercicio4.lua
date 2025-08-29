function calculadora(op, num1, num2)
  if op == "+" then
    return num1 + num2
    
  elseif op == "-" then
    return num1 - num2
    
  elseif op == "*" then
    return num1 * num2
    
  elseif op == "/" then
    return num1 / num2
    
  else
    return "Operação inválida"
    
  end
end


print("Informe o operador: ")
op = io.read()
print("Informe o primeiro numero: ")
num1 = io.read("*n")
print("Informe o segundo numero: ") 
num2 = io.read("*n")

print("O resultado da operação é: ", calculadora(op, num1, num2))
