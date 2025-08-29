print("Informe o tamanho da tabela: ")
M = io.read("*n")

T = {}
F = {}

print("Informe os numeros da tabela: ")
for i = 1, M, 1 do
  T[i] = io.read("*n")
end

for i = 1, M, 1 do
  if T[i] % 2 == 0 then
    table.insert(F, T[i])
  end
end

print("Os números pares são:")
for i, F in ipairs(F) do
  print(F)
end
