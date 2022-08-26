--#region
--Common string
--#endregion

local string1 = "This is string one"
local string2 = '\"This is string two\"'
local string3 = [[This is string three]]

print(string1)
print(string2)
print(string3)

-- 反转
print(string.reverse(string1))

-- 转大写
print(string.upper(string1))

-- 转小写
print(string.lower(string1))

-- 替换
print(string.gsub(string1, "This", "That"))

-- 查找
print(string.find(string1, "is", 4))

print(string.match(string1, "iss", 1))

-- 格式化
print(string.format("This value is: %f ", 4))
print(string.format("This value is: %d ", 4))

-- 长度
print(string.len(string1))

-- 复制 n 个
print(string.rep(string1, 2))

-- 连接
print(string1 .. string2)

-- 返回一个迭代器函数，每一次调用这个函数，返回一个在字符串 str 找到的下一个符合 pattern 描述的子串。如果参数 pattern 描述的字符串没有找到，迭代函数返回nil
for word in string.gmatch("Hello Lua user", "%a+") do
    print(word)
end

-- 截取
print(string.sub(string1, 1, 4))

-- 字符与整数相互转换

-- 转换第一个字符
print(string.byte("Lua"))
-- 转换第三个字符
print(string.byte("Lua", 3))
-- 转换末尾第一个字符
print(string.byte("Lua", -1))
-- 第二个字符
print(string.byte("Lua", 2))
-- 转换末尾第二个字符
print(string.byte("Lua", -2))
-- 整数 ASCII 码转换为字符
print(string.char(97))
