def combine_anagrams(array)
  result = array.group_by{|word| word.chars.sort.to_a}.values
end


combine_anagrams(%w[cars for potatoes racs four scar creams scream])
