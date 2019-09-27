def is_palindrome?(string=nil)
    string.to_s.downcase! #перевод в нижний регистр

    if string.to_s.empty? #проверка на пустоту
        return false
    else
        string.to_s.gsub!(/\W/,"")  #удаление всего, кроме латиницы или цифры
        string.to_s.reverse == string.to_s #сравнение строки с обратной
    end
end



is_palindrome?(12321)
is_palindrome?("A man, a plan, a canal -- Panama")
is_palindrome?("Madam, I'm Adam!")
is_palindrome?(nil)
is_palindrome?("Abracadabra")
