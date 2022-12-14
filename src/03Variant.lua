--[[
    1 Lua 变量有三种类型：全局变量、局部变量、表中的域;
    2 Lua 中的变量全是全局变量，哪怕是语句块或是函数里，除非用 local 显式声明为局部变量;
    3 局部变量的作用域为从声明位置开始到所在语句块结束;
    4 变量的默认值均为 nil。
]]

a = 5               -- 全局变量
local b = 5         -- 局部变量

function joke()
    c = 5           -- 全局变量
    local d = 6     -- 局部变量
end

joke()
print(c,d)          --> 5 nil

do
    local a = 6     -- 局部变量
    b = 6           -- 对局部变量重新赋值
    print(a,b);     --> 6 6
end

print(a,b)      --> 5 6

