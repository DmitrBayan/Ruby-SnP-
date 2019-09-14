def connect_hashes(hash1, hash2)
  priority = false
  tmp1=0
  tmp2=0

  hash1.each_value {|v| tmp1 += v}
  hash2.each_value {|v| tmp2 += v}

  if tmp1 > tmp2
    priority = true
  end

  hash1.reject!{|k, v| v < 10}
  hash2.reject!{|k, v| v < 10}

  if priority
    hash2.reject!{|k| hash1.key?(k)}
    hash1.merge!(hash2)
    return hash1.sort{|a,b| a[1]<=>b[1]}.to_h
  else
    hash1.reject!{|k| hash2.key?(k)}
    hash2.merge!(hash1)
    return hash2.sort{|a,b| a[1]<=>b[1]}.to_h
  end
end

puts connect_hashes({ a: 2, b: 12 }, { c: 11, e: 5 }) # => { c: 11, b: 12 }
puts "\n"
puts connect_hashes({ a: 13, b: 9, d: 11 }, { c: 12, a: 15 }) # => { d: 11, c: 12, a: 13 }
puts "\n"
puts connect_hashes({ a: 14, b: 12 }, { c: 11, a: 15 }) # => { c: 11, b: 12, a: 15 }
