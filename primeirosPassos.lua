-- Capitulo 1: Primeiros Passos
print("Hello world!")

-- define uma função fatorial
---[[                         -- colocar um "-" no começo do "--[[" faz ele virar de linha unica
function fact (n)
    if n == 0 then
        return 1
    else
        return n * fact(n-1)
    end
end

print("entre com um número:")
a = io.read("*number")        -- lê um numero
print(fact(a))
--]]

--[[
a = 1
b = a * 2
--]]

--[[ Tão bem pode
a = 1;
b = a * 2;
--]]

--[[
a = 1; b = a * 2
a = 1 b = a * 2              -- feito, mas válido
--]]
