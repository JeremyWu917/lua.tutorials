-- 求两数的最大值
function max(num1, num2)
    if num1 >= num2 then
        return num1
    else
        return num2
    end
end

print(max(1, 23))

function double(num1, num2)
    return 2 * num1, 2 * num2
end

print(double(100, 200))


-- 函数传递
localPrint = function(param)
    print("This is local print function with parameters -> " .. param)
end

function showInformation(name, gender, functionPrint)
    result = "Hi there, I'm " .. name .. ",a " .. gender .. ", thanks!";
    functionPrint(result)
end

localPrint("Oppos")
showInformation("Jeremy", "male", localPrint)
