print("Informe o inicio: ")
M = io.read("*n")

print("Informe o fim do intervalo: ")
N = io.read("*n")

print("Informe o x: ")
X = io.read("*n")

print("Os multiplos de " .. X .. " no intervalo são: ")
for i = M, N, 1 do
  if i % X == 0 then
    print(i)
  end
end
