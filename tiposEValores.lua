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
