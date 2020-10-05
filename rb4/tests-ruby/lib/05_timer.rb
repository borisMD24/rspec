def zeroer(n)
    if n < 10
        return "0" + n.to_s
    else
        n.to_s
    end
end

def time_string(t)
    return("#{zeroer(t / 60 ** 2)}:#{zeroer(t / 60 % 60)}:#{zeroer(t % 60)}")
end