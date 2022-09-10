-- 只读方式打开文件
local file = io.open("C:/tmp/1.txt", "r")
print(file)

-- 设置默认输入文件为 1.txt
io.input(file)

-- 输出文件第一行
print(io.read())

-- 关闭打开的文件
io.close(file)

-- 以附加的方式打开只写文件
local file = io.open("C:/tmp/1.txt", "a")

-- 设置默认输出文件为 1.txt
io.output(file)

-- 在文件最后一行添加注释
io.write("======== 测试添加 =========")

-- 关闭打开的文件
io.close(file)

-- 以只读方式打开文件
file = io.open("C:/tmp/1.txt", "r")

-- 输出文件第一行
print(file:read())

-- 关闭打开的文件
file:close()

-- 以附加的方式打开只写文件
file = io.open("C:/tmp/1.txt", "a")

-- 在文件最后一行添加 Lua 注释
file:write("--test")

-- 关闭打开的文件
file:close()

-- 以只读方式打开文件
file = io.open("C:/tmp/1.txt", "r")

file:seek("end",-25)
print(file:read("*a"))

-- 关闭打开的文件
file:close()