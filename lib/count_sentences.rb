require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end
  
  def count_sentences_better
    string_array = self.split(/[\!|\?|\.]/).delete_if do |element|
      element.length < 2
    end
    string_array.count
  end

  def count_sentences
    string_array = self.split(/[\!|\?|\.]/)
    return_array = []
    string_array.each do |element|
      if element.size > 2 
        return_array << element
      end
    end
    return_array.count
  end
end


sample = "It has three sentences. This is a string! Right?"
complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."
complex_string.count_sentences
