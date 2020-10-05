def is_consonent(letter)
    vowels = ["A", "E", "I", "O", "U", "Y"]
    vowels.map do |l|
        if l == letter.upcase
            return false
        end
    end
    return true
end

def ayer(word)
    word = word.chars
    while is_consonent word[0]
        if word[0].ord > 65 && word[0].ord < 91
            if word[1].upcase == "U"
                word [2] = word[2].upcase
            else
                word[1] = word[1].upcase
            end
            word[0] = word[0].downcase
        end
        if word[0].upcase == "Q" && word[1].upcase == "U"
            word.push(word.shift)
        end
        word.push(word.shift)
    end
    word = word.join + "ay "
    return word
end

def translate(str)
    r = ""
    str = str.split(" ")
    str.map do |word|
        r += ayer word
    end
    return r.chop
end

puts translate("Nevalune")
