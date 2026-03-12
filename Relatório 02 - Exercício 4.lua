print("--- CALCULADORA ---")

print("Digite o primeiro numero:")
local n1 = tonumber(io.read())

print("Digite o segundo numero:")
local n2 = tonumber(io.read())

print("Digite o operador (+, -, *, /):")
local op = io.read()

function soma(a, b)
    return a + b
end

function subtracao(a, b)
    return a - b
end

function multiplicacao(a, b)
    return a * b
end

function divisao(a, b)
    return a / b
end

-- Funcao calculadora
function calculadora(n1, n2, operador)

    if operador == "+" then
        return soma(n1, n2)

    elseif operador == "-" then
        return subtracao(n1, n2)

    elseif operador == "*" then
        return multiplicacao(n1, n2)

    elseif operador == "/" then
        return divisao(n1, n2)

    else
        return "Operador invalido!"
    end
end

local resultado = calculadora(n1, n2, op)

print("Resultado: " .. resultado)