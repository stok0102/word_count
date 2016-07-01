require('pry')

class String
  def word_count (user_input)
    result = 0
    input_array = user_input.split(" ")
    input_array.each do |match|
      if self == match
        result += 1
      end
    end
    result
  end
end
