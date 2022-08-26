print("---------------------- while --------------------")
i = 1
while (10 >= i) do
    print("Hi there" .. " - " .. i)
    i = i + 1
end

print("---------------------- for --------------------")
for i = 1, 10, 1 do
    print("Hi Jeremy" .. " - " .. i)
end

print("---------------------- repeat until --------------------")
repeat
    print("Hi Lua" .. " - " .. i)
    i = i - 1
until i <= 0
