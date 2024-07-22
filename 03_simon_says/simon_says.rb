#write your code here
def echo(x)
    return x
end

def shout(x)
    return x.upcase
end

def repeat(x, y=2)

    result = (x + " ") * y
    return result.chop
end

def start_of_word(x, y)
    return x.slice(0, y)
end

def first_word(x)
    return x.split(" ")[0]
end

def titleize(x)
    little_words = [
        "a", "to", "by", "in", "and", "but", "or", "the", "on", "with", "at", "an"
    ]

    cap_x = x.split(" ")
    
    result = ""
    cap_x.each do |w|
       if little_words.include?(w) == true
        result += w + " "
       else 
        result += w.capitalize + " "
       end
    end
    
    return result.chop

end

