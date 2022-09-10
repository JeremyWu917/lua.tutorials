-- assert
local function add(a, b)
    assert(type(a) == "number", "a is not a number")
    assert(type(b) == "number", "b is not a number")
    return a + b
end

print(add(10, 10))

-- error pcal xpcall debug
pcall(function(i) print(i) end, 10)

pcall(function(i) print(i, 0) error('error...') end, 20)

--xpcall(function(i) print(i) error('error..') end, function() print(debug.traceback()) end, 33)


function myfunction()
    n = n / nil
end

function myerrorhandler(err)
    print("ERROR:", err)
end

status = xpcall(myfunction, myerrorhandler)
print(status)
