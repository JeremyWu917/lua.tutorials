--[[
    nil	这个最简单，只有值nil属于该类，表示一个无效值（在条件表达式中相当于false）。
    boolean	包含两个值：false和true。
    number	表示双精度类型的实浮点数
    string	字符串由一对双引号或单引号来表示
    function	由 C 或 Lua 编写的函数
    userdata	表示任意存储在变量中的C数据结构
    thread	表示执行的独立线路，用于执行协同程序
    table	Lua 中的表（table）其实是一个"关联数组"（associative arrays），数组的索引可以是数字、字符串或表类型。在 Lua 里，table 的创建是通过"构造表达式"来完成，最简单构造表达式是{}，用来创建一个空表。
]]

-- 打印数据类型
print(type("Hello world"))      --> string
print(type(10.4*3))             --> number
print(type(print))              --> function
print(type(type))               --> function
print(type(true))               --> boolean
print(type(nil))                --> nil
print(type(type(X)))            --> string
print(type({}))                 --> table

tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end
-- 全局变量赋值为 nil 时表示删除
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. " - " .. v)
end

-- nil 比较时需要加上引号
print(type(x) == "nil")
print(type(x) == nil)

-- 自动转换数据类型
print("2" + 7)

-- 使用 .. 连接变量
print(123 .. 456)
print(123 .. "abc")
print("abc" .. "edf")

-- 使用 # 计算字符的长度
print(#"abcd")

-- 创建一个局部空表
local tb1 = {}

-- 创建时初始化表
local tb2 = {"Jeremy", "Katherine", "Gary", "Talor"}

-- 案例
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

--[[
    在 Lua 里，最主要的线程是协同程序（coroutine）。它跟线程（thread）差不多，拥有自己独立的栈、局部变量和指令指针，可以跟其他协同程序共享全局变量和其他大部分东西。
线程跟协程的区别：线程可以同时多个运行，而协程任意时刻只能运行一个，并且处于运行状态的协程只有被挂起（suspend）时才会暂停。
]]

-- 函数
local function factorial1(n)
    if n == 0 then
        return 1
    else
        return n * factorial1(n - 1)
    end
end
print(factorial1(5))
local factorial2 = factorial1
print(factorial2(5))

-- 匿名函数

local function factorial3(n)
    if n == 0 then
        return 1
    else
        return n * fun(n - 1)
    end
end
print(factorial1(5))
factorial3 = factorial1
print(factorial2(5))
