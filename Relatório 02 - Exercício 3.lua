print("Quantos numeros voce deseja digitar?")
local N = tonumber(io.read())

local numeros = {}
local impares = {}

for i = 1, N do
    print("Digite o numero " .. i .. ":")
    numeros[i] = tonumber(io.read())
end

for i = 1, #numeros do
    if numeros[i] % 2 ~= 0 then
        table.insert(impares, numeros[i])
    end
end

print("Numeros impares encontrados:")

for i = 1, #impares do
    print(impares[i])
end