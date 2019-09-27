class String
  def is_palindrome?

      self.to_s.downcase! #перевод в нижний регистр
      self.to_s.gsub!(/\W/,"")  #удаление всего, кроме латиницы или цифры
      return (self.to_s.reverse == self.to_s)  #сравнение строки с обратной

  end
end


"foo".is_palindrome?
"A man, a plan, a canal -- Panama".is_palindrome?
"12321".is_palindrome?
