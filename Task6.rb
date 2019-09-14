def rps_game_winner(double_array)
  double_array.flatten!   #преобразование в одномерный
  if double_array.count >= 5  #если число вложенных масивов больше 5
    return puts("WrongNumberOfPlayersError")
  elsif double_array[1] != 'P' and double_array[1] != 'R' and double_array[1] != 'S'  #ошибки в выборе хода
    return puts("NoSuchStrategyError")
  elsif double_array[3] != 'P' and double_array[3] != 'R' and double_array[3] != 'S'  #ошибки в выборе хода
    return puts("NoSuchStrategyError")

  elsif double_array[1] == 'P'    #стратегия, если первый выбросил "Бумагу"
    if double_array[3] == 'R' or double_array[3] == 'P'
      puts("#{double_array[0]} #{double_array[1]}")
    else
      puts("#{double_array[2]} #{double_array[3]}")
    end

  elsif double_array[1] == 'R'    #стратегия, если первый выбросил "Камень"
    if double_array[3] == 'R' or double_array[3] == 'S'
      puts("#{double_array[0]} #{double_array[1]}")
    else
      puts("#{double_array[2]} #{double_array[3]}")
    end

  elsif double_array[1] == 'S'    #стратегия, если первый выбросил "Ножницы"
    if double_array[3] == 'P' or double_array[3] == 'S'
      puts("#{double_array[0]} #{double_array[1]}")
    else
      puts("#{double_array[2]} #{double_array[3]}")
    end
  end

end


rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]]) # => WrongNumberOfPlayersError
rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
rps_game_winner([%w[player1 P], %w[player2 S]]) # => 'player2 S'
rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
