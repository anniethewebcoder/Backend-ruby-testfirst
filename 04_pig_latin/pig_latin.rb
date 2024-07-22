#write your code here
def translate(x)

    vowels = ["a", "e", "i", "o", "u"]

    result = ""

    if vowels.include?(x[0]) == true 
        result = x + "ay"
    else
        first_letter = x[0]
        rest_of_word = x[1..-1]
        
        result = rest_of_word + first_letter + "ay"
    end

    return result


end
