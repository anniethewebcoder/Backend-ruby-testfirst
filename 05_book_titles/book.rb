class Book
# write your code here
    attr_reader :title

    def title=(new_title)
        @title = titleize(new_title)
    end

    # def initialize (title)
    #     @title = title
    # end

    def titleize(x)
        little_words = [
            "a", "to", "by", "in", "and", "but", "or", "the", "on", "with", "at", "an", "over", "of"
        ]
    
        cap_x = x.split(" ")
        
        result = ""
    
        cap_x.each_with_index do |w, i|
           if little_words.include?(w) == true && i > 0 
            result += w + " "
           else 
            result += w.capitalize + " "
           end
        end
        
        return result.chop
    
    end
    
end

# new_book = Book.new("ruby programming")
# new_book.title