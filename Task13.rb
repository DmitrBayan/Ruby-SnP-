class String
  def isPalindrome?

      self.to_s.downcase! #перевод в нижний регистр
      self.to_s.gsub!(/\W/,"")  #удаление всего, кроме латиницы или цифры
      return (self.to_s.reverse == self.to_s)  #сравнение строки с обратной

  end
end


"foo".isPalindrome?
"A man, a plan, a canal -- Panama".isPalindrome?
"12321".isPalindrome?
