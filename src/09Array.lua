-- 下标默认从 1 开始
local array = { "Jeremy", "Gary", "Kalley" }
for i = 0, 3 do
    print(array[i])
end
array = nil

-- 指定下标从 0 开始
local arr = {}
for i = 0, 10, 1 do
    arr[i] = i + 1
end
for i = 0, 10, 1 do
    print(arr[i])
end
arr = nil

-- 多维数组
print("===========================================")
local array = {}
for i = 0, 2, 1 do
    array[i] = {}
    for j = 0, 2, 1 do
        array[i][j] = {}
        for k = 0, 2, 1 do
            array[i][j][k] = k
        end
    end
end
-- 打印一下
for i = 0, 2, 1 do
    for j = 0, 2, 1 do
        for k = 0, 2, 1 do
            print(array[i][j][k])
        end
    end
end

--[[
    假定跳n个台阶右f(n)种跳法，容易知道一个台阶有一种跳法，两个台阶有两种跳法，即f(1)=1，f(2)=2;
    现有n个台阶，考虑先跳一步，则剩下的n-1个台阶有f(n-1)种跳法，
    考虑先跳两步，则剩下的n-2个台阶有f(n-2)种跳法
    即有f(n)=f(n-1)+f(n-2),即为斐波那契数列
]]
local function Get(target)
    if target <= 2 then
        return target
    end
    local a = 1
    local b = 2
    for i = 3, target, 1 do
        b = a + b
        a = b - a
    end
    return b
end

print(Get(10))
