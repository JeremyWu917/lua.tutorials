-- 普通表
mytable = {}

-- 元表
mymetatable = {}

-- 把 mymetatable 设为 mytable 的元表
setmetatable(mytable, mymetatable)

-- 或
mytable = setmetatable({}, {})

print(getmetatable(mytable))

other = { foo = 3 }
t = setmetatable({}, { __index = other })
print(t.foo)
print(t.bar)


mytable = setmetatable({ key1 = "value1" }, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2)


mymetatable = {}
mytable = setmetatable({key1 = "value1"}, { __newindex = mymetatable })

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey,mymetatable.newkey)

mytable.key1 = "新值1"
print(mytable.key1,mymetatable.key1)
