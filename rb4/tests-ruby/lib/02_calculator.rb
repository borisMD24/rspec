def add(f, s)
    return f+s
end

def subtract(f, s)
    return f-s
end

def multiply(f, s)
    return f*s
end

def power(f, s)
    return f**s
end

def factorial(n)
    buff = 1
    if(n == 1 || n == 2)
        return n
    end
    while n > 1
        buff = buff * n
        n -= 1
    end
    return buff
end

def sum(arr)
    r = 0
    arr.map do |i| r+=i end
    return r
end