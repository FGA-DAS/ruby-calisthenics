module FunWithStrings
  def palindrome?
        normalized = self.gsub(/[^A-Za-z0-9]/, '')
        return normalized.reverse.downcase == normalized.downcase
  end

  def count_words
      word_array = self.downcase.split(" ")
      word_dict = Hash.new(0)

      word_array.each do |word|
          next unless word =~ /\w/
          word = word.gsub(/[^A-Za-z0-9]/, '')
          word_dict[word] = word_dict[word]+1
      end

      return word_dict
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
