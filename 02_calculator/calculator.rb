#write your code here

def add(x,y)
    return x + y
end

def subtract(x,y)
    return x - y
end

def sum(a)
    # result = a.reduce(0) {|t, e| t + e}
    # return result
    return a.sum
end

def multiply(a)
    result = a.reduce(1) {|t, e| t * e}
    return result
end

def power(x,y)
    # result = 1

    # for i in 1..y
    #     result *= x
    # end

    # return result

    return x ** y
end

def factorial(x)
    result = 1
    
    for i in 1..x
        result *= (i)
    end

    return result

end
