module FunWithStrings
  def palindrome?
        normalized = self.gsub(/[^A-Za-z0-9]/, '')
        return normalized.reverse.downcase == normalized.downcase
  end
  def count_words
    # your code here
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
