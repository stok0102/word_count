require('pry')

class String
  def word_count (user_input)
    input_array = user_input.split(" ")
    binding.pry
    if input_array.include? self
      1
    else
      0  
    end
  end
end
