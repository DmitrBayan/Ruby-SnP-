def coincidence(array=nil, range=nil)
  newArray = Array.new
  if array != nil and range != nil
    for i in (0..array.count)
      if range === array[i]
        newArray << array[i]
      end
    end
  end
  puts ("#{newArray}")
end

coincidence([1, 2, 3, 4, 5], (3..5))  # => [3, 4, 5]
coincidence()  # => []
coincidence([nil, 1, 'foo', 4, 2, 2.5], (1..3)) # => [1, 2, 2.5]
