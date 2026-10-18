-- Capitulo 2: Tipos e valores

-- Oito tipos básicos: nil, boolean, number, string, userdata, function, thread e table
--[[
print(type("Hello word"))  --> string
print(type(10.4 * 3))      --> number
print(type(print))         --> function
print(type(type))          --> function
print(type(true))          --> boolean
print(type(nil))           --> nil
print(type(type(X)))       --> string -- type resulta sempre em uma cadeia de caracteres
--]]

--[[
print(type(a))             --> nil       ('a' não foi inicializado)
a = 10
print(type(a))             --> number
a = "a string!!"
print(type(a))             --> string
a = print                  -- sim, isso funciona
a(type(a))                 --> function
--]]

--[[
a = "one string"
b = string.gsub(a, "one", "another")          -- muda partes da cadeia
print(a)                   --> one string
print(b)                   --> another string
--]]

--[[ -- '#' (operador de comprimento)
a = "hello"
print(#a)                  --> 5
print(#"good\0bye")        --> 8
--]]

--[[
\a    -- campainha                       \t    -- tabulação horizontal
\b    -- backspace                       \v    -- tabulação vertical
\f    -- alimentação de formulário       \\    -- barra invertida
\n    -- quebra de linha                 \"    -- citação [aspas duplas]
\r    -- retorno de carro                \'    -- apóstrofo [aspas simples]
\z    -- ignora os caracteres subsequentes na cadeia até o primeiro que não seja um espaço 
--]]

--[=[
page = [[
<html>
<head>
    <title>An HTML Page<\title>
</head>
<body>
    <a href="http://www.lua.org">Lua</a>
<\body>
</html>
]]

write(page)
--]=]

--[[
print("10" + 1)               --> 11
print("10 + 1")               --> 10 + 1
print("-5.3e-10" * "2")       --> 1.06e-09
print("hello" + 1)            --> ERRO (não consegue converter "hello")

print(10 .. 20)               --> 1020 -- ".." é o operador de concatenação
--]]

--[[
line = io.read()              -- lê uma linha
n = tonumber(line)            -- tenta converter a linha em um número
if n == nil then
    error(line .. "não é um número válido")
else
    print(n * 2)
end
--]]

--[[
print(tostring(10) == "10")    --> true
print(10 .. "" == "10")        --> true
--]]

--[[
a = {}                         -- cria uma tabela e armazena sua referência em 'a'
k = "x"
a[k] = 10                      -- nova entrada, com chave = 'x' e valor = 10
a[20] = "great"                -- nova entrada, com chave = 20 e valor = "great"
print(a["x"])                  --> 10
k = 20
print(a[k])                    --> "great"
a["x"] = a["x"] + 1            -- incrementa entrada "x"
print(a["x"])                  --> 11
--]]

--[[
a = {}
a["x"] = 10
b = a                          -- 'b' se refere à mesma tabela que 'a'
print(b["x"])                  --> 10
b["x"] = 20
print(a["x"])                  --> 20
a = nil                        -- somente 'b'ainda se refere à tabela
b = nil                        -- não há mais referência à tabela
--]]

---[[
a = {}                         -- tabela vazia
-- cria 1000 novas entradas
for i = 1, 1000 do a[i] = i * 2 end
print(a[9])                    --> 18
a["x"] = 10
print(a["x"])                  --> 10
print(a["y"])                  --> nil
--]]

---[[
a.x = 10                       -- o mesmo que a["x"] = 10
print(a.x)                     -- o mesmo que print(a["x"])
print(a.y)                     -- o mesmo que print(a["y"])
--]]

---[[
a = {}
x = "y"
a[x] = 10                      -- coloca 10 no campo "y"
print(a[x])                    --> 10         -- valor do campo "y"
print(a.x)                     --> nil        -- valor do campo "x" (indefinido)
print(a.y)                     --> 10         -- valor do campo "y"
--]]

---[[
-- lê 10 linhas, guardando-as em uma tabela
a = {}
for i = 1, 10 do
    a[i] = io.read()
end

-- impreme as linhas
for i =1, #a do
    print(a[i])
end
--]]

---[[
i = 10; j = "10"; k = "+10"
a = {}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[i])                    --> one value
print(a[j])                    --> another value
print(a[k])                    --> yet another value
print(a[tonumber(j)])          --> one value
print(a[tonumber(k)])          --> one value
--]]
