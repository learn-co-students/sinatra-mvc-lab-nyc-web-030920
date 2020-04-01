class PigLatinizer
 
  def starts_vowel?(word)
    ['a','e','o','u','i'].include?(word[0].downcase)
  end
 
  # def starts_consonant?(word)
  #   [bcdfghjklmnpqrstvwxyz].include?(word[0])
  # end

  def piglatinize(text)
    text = text.split
    text.map do |word|
      if starts_vowel?(word)
        word + "way"
      else
        while !starts_vowel?(word)
          word = word[1..] + word[0]
        end
        word += "ay"
      end
    end.join(" ")
  end
end