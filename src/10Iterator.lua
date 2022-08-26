local contrys = {"Nanjing", "Wuxi", "Suzhou", "Nantong"}
for index, value in ipairs(contrys) do
    print(index .. " - " .. value)
end

-- 无状态迭代器
-- 计算平方数
local function square(maxCount, currentCount)
    if currentCount < maxCount then
        currentCount = currentCount + 1
        return currentCount, currentCount * currentCount
    end
end

for i, n in square, 10, 0 do
    print(i, n)
end

-- 多状态迭代器
local array = {"Jeremy", "Susie"}

local function elementIterator(collection)
    local index = 0
    local count = #collection
    -- 闭包函数
    return function ()
        index = index + 1
        if index <= count then
            -- 返回迭代器当前元素
            return collection[index]
        end
    end
end

for element in elementIterator(array) do
    print(element)
end