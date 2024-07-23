#write your code here
def translate(x)

    vowels = ["a", "e", "i", "o", "u"]

    result = ""

    case check_first_letter(x)
    when "vowel"
        result = x + "ay"
    when "one"
        first_letter = x[0]
        rest_of_word = x[1..-1]

        result = rest_of_word + first_letter + "ay"
    when "two"
        first_two_letters = x[0..1]
        rest_of_word = x[2..-1]

        result = rest_of_word + first_two_letters + "ay"
    end

    return result


end

def check_first_letter(x)
    
    vowels = ["a", "e", "i", "o", "u"]

    x_arr = x.split(" ")

    first_letter = x[0]
    second_letter = x[1]

    result = ""
    
    if vowels.include?(x[0]) == true
        result = "vowel"
    elsif vowels.include?(x[0]) == false && vowels.include?(x[1]) == true
        result = "one"
    else
        result = "two"
    end

    return result

end