def sort_array(array_of_integers)
    if array_of_integers.empty?
      return array_of_integers
    end
    min_el = array_of_integers.min
    max_el = array_of_integers.max
    sorted_array = array_of_integers.map do |element|
      if element == min_el
        max_el
      elsif element == max_el
        min_el
      else
        element
      end
    end
    sorted_array << min_el
  end

  puts(sort_array([])) # => []
  puts(sort_array([2, 4, 6, 8])) # => [8, 4, 6, 2, 2]
  puts(sort_array([1])) # => [1, 1]
  puts(sort_array([1, 2, 1, 3]))
