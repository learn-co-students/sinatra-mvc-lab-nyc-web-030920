require "pry"
class PigLatinizer
attr_accessor :string

def initialize(string)
    @string= string
end

#on true, starts with vowel, on false doesn't
def self.starts_with?(str)
    char= str[0]
    constanants= "bcdfghjklmnpqrstvwxyz"
    vowels= "aeiou"
    if vowels.include?(char)
        return true
    else    
        return false
    end
end

def piglatin
    words= self.string.split
    piglatin=words.map do|word|
        if PigLatinizer.starts_with?(word)
            word= "#{word}way"
        else
            word= "#{word[1..-1]}#{word[0]}ay"
        end
    end
    piglatin.join(" ")
end

end

