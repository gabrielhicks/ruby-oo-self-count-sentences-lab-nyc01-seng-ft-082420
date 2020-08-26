require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    words = self.split("")
    count = 0
    words.each do |word|
      if word.end_with?(".")
        count += 1
      elsif word.end_with?("?")
        count += 1
      elsif word.end_with?("!")
        count += 1
      elsif word.end_with?(",")
        count -= 1
      end
    end
  count
  end
end