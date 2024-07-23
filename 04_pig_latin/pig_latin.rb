#write your code here
def translate(x)

    vowels = ["a", "e", "i", "o", "u"]

    result = ""

    x_arr = x.split(" ")

    x_arr.each do |w| 
        if vowels.include?(w[0]) == true
            result += w + "ay "
        elsif vowels.include?(w[0]) == false && w[1] == "u"
            result += w[2..-1] + w[0..1] + "ay "
        elsif vowels.include?(w[0]) == false && vowels.include?(w[1]) == false && w[2] == "u"
            result += w[3..-1] + w[0..2] + "ay "
        elsif vowels.include?(w[0]) == false && vowels.include?(w[1]) == true
            result += w[1..-1] + w[0] + "ay "
        elsif vowels.include?(w[0]) == false && vowels.include?(w[1]) == false && vowels.include?(w[2]) == true
            result += w[2..-1] + w[0..1] + "ay "
        elsif vowels.include?(w[0]) == false && vowels.include?(w[1]) == false && vowels.include?(w[2]) == false && vowels.include?(w[3]) == true
            result += w[3..-1] + w[0..2] + "ay "
        end

    end

    return result.chop

end