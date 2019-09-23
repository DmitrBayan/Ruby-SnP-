def isPalindrome?(string=nil)
    string.to_s.downcase! #перевод в нижний регистр

    if string.to_s.empty? #проверка на пустоту
        return false
    else
        string.to_s.gsub!(/\W/,"")  #удаление всего, кроме латиницы или цифры
        return string.to_s.reverse == string.to_s #сравнение строки с обратной
    end
end



isPalindrome?(12321)
isPalindrome?("A man, a plan, a canal -- Panama")
isPalindrome?("Madam, I'm Adam!")
isPalindrome?(nil)
isPalindrome?("Abracadabra")
