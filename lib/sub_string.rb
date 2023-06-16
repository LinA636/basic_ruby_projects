require 'pry-byebug'

def substrings(text, dictionary)
  words_array = text.split(/\W+/) # split on one or more NON-word characters
  words_array.reduce(Hash.new(0)) do |listing, word|
    word_in_dic_array = dictionary.select { |dic_word| word.downcase.include?(dic_word) }
    word_in_dic_array.each do |dic_word|
      listing[dic_word] += word_in_dic_array.count(dic_word)
    end
    listing
  end
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
word = "Howdy partner, sit down! How's it going?"
p substrings(word, dictionary)
