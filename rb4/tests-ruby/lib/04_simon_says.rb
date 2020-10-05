def echo(string)
    return string
end

def shout(string)
    return string.upcase
end

def repeat(string, nbr=2)
    buff = string
    while nbr > 1
        buff += " " +string
        nbr -= 1
    end
    return buff
end

def start_of_word(word, i = 1)
    return word[0...i]
end

def first_word(sentence)
    return sentence.split[0]
end

def titleize(sentence)
    r = ""
    i = 0
    sentence.split.map do |word|
        if word.length > 3 || i == 0
            word.capitalize!
        end
        r += word + " "
        i+=1
    end
    return r.chop!
end