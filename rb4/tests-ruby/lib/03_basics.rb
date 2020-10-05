def who_is_bigger(a, b, c)
    bigger = 0
    r = ""
    method(__method__).parameters.map do |param|
        if (eval param[1].to_s) == nil
            return "nil detected"
        end
        if (eval param[1].to_s) > bigger
            bigger = (eval param[1].to_s)
            r = param[1].to_s
        end
        
    end
    return r + " is bigger"
end

def reverse_upcase_noLTA(string)
    return string.upcase.delete("L").delete("T").delete("A").reverse
end

def array_42(arr)
    return arr.include?(42)
end

def magic_array(arr)
    return arr.flatten.select {|num| (num % 3) != 0 }.map{|i| i * 2}.uniq.sort
end
