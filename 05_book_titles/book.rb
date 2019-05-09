class Book
# write your code here
    attr_accessor :title

    def title
        words = @title.split
        words.map do |word|
            not_capital = ["and", "in", "the", "of", "a", "an"]
            unless (not_capital.include? word)
                word.capitalize!
            end
        end
        words[0].capitalize!
        words.join(" ")
    end
end
