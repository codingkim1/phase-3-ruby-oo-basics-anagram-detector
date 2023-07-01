# Your code goes here!
require "pry"

class Anagram
    def initialize(word)
      @word = word.downcase
    end
  
    def match(words)
      words.select { |w| anagram?(w) }
    end
  
    private 
  
    def anagram?(word)
      word.downcase.chars.sort == @word.chars.sort && word.downcase != @word
    end
  end
 
  
anagram = Anagram.new("listen")
words = ["tru", "enlist"]
binding.pry 