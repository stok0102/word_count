require('pry')

class String
  def word_count (user_input)
    result = 0
    input_array = user_input.split(" ")
    binding.pry
    if input_array.include? self
      result += 1
    end
    result
  end
end
