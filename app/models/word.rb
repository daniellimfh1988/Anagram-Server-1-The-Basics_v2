class Word < ActiveRecord::Base
  # Returns an Array of Word objects which represent anagrams of this word
  # This can and should make calls to the database
  # Try to do it in as few calls as possible, without loading every word into memory. If you can't, that's ok.

  def self.is_anagram(anagram_word)
    @anagram_word = anagram_word.downcase.chars.sort.join
    @anagram_array = []
    Word.all.each do |words|
      # byebug
      if @anagram_word == words.dictionary_word.downcase.chars.sort.join
        @anagram_array << words.dictionary_word
      end
    end
   @anagram_array
end
end