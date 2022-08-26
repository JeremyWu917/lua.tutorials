--[[
    Lua 的模块是由变量、函数等已知元素组成的 table，因此创建一个模块很简单，就是创建一个 table，然后把需要导出的常量、函数放入其中，最后返回这个 table 就行
]]

module = {}

-- 常量
module.constant = "我是一个常量"

-- 函数
function module.func1()
    io.write("我是一个共有函数")
end

function module.func2()
    print("我是一个私有函数")
end

function module.func3()
    module.func2()   
end

return module