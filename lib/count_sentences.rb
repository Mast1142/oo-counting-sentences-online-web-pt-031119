require 'pry'

class String

  def sentence?
    if self.end_with?(".") == true
      return true
    else
      return false
    end
  end

  def question?
    if self.end_with?("?") == true
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!") == true
      true
    else
      false
    end
  end

  def count_sentences
    sentence = []
    sentence << self.split(".")
    sentence << self.split("?")
    sentence << self.split("!")
    sentence.reject(&:empty?)
    if sentence.count == nil.to_i
      nil.to_i
    else
      return sentence.count
    end
  end
end
