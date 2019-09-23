def count_words(string)
  hash = Hash.new
  string.downcase!
  myString = string.split(/[, \.?!-]+/)
  for word in myString
    myString.count(word)
    hash.merge!(Hash[word, myString.count(word)])
  end
  return hash

end

count_words("A man, a plan, a canal -- Panama")
  # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
count_words "Doo bee doo bee doo"
  # => {'doo' => 3, 'bee' => 2}
