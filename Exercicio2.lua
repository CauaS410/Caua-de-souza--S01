print("Informe o tamanho da tabela: ")
M = io.read("*n")

T = {}

print("Informe os numeros da tabela: ")
for i = 1, M, 1 do
  T[i] = io.read("*n")
end

maior = 0
for i = 1, M, 1 do
  if T[i] > maior then
    maior = T[i]
  end
end

print("O maior número é ", maior)
