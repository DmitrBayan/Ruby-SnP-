def multiply_numbers(*input)
  temp = input.flatten.join.gsub(/\D/, ",").split("").map{|el| el.to_i}.reject{|el| el == 0}
  temp.inject{|el1,el2| el1*el2}
end

multiply_numbers() # => nil
multiply_numbers('ss') # => nil
multiply_numbers('1234') # => 24
multiply_numbers('sssdd34') # => 12
multiply_numbers(2.3) # => 6
multiply_numbers([5, 6, 4]) # => 120
