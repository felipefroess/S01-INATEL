print("--- MAIOR NUMERO DA LISTA ---")

print("Quantos numeros voce deseja digitar?")
local N = tonumber(io.read())

local numeros = {}

for i = 1, N do
    print("Digite o numero " .. i .. ":")
    numeros[i] = tonumber(io.read())
end

local maior = numeros[1]

for i = 1, #numeros do
    if numeros[i] > maior then
        maior = numeros[i]
    end
end

print("O maior numero da tabela é: " .. maior)