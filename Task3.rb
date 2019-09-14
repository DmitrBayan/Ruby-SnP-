def max_odd(array)
  array.flatten!   #преобразование в одномерный массив
  array.compact!   #удаление всех nil'ов
  array.delete_if{|el| el % 2 == 0 }   #удаляем все четные
  array.delete_if{|el| el.class != Integer and el.class != Float}   #удаляем все объекты, чьи классы не численные
  return array.max
end

puts(max_odd([1, 2, 3, 4, 4])) # => 3
puts(max_odd([21.0, 2, 3, 4, 4])) #=> 21.0
puts(max_odd(['ololo', 2, 3, 4, [1, 2], nil])) # => 3
puts(max_odd(%w[ololo fufufu])) # => nil
puts(max_odd([2, 2, 4])) # => nil
