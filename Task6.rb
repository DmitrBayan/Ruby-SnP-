WrongNumberOfPlayersError = Class.new(ArgumentError)
NoSuchStrategyError = Class.new(ArgumentError)
#список ошибок

def rps_game_winner(double_array)
  double_array.flatten!   #преобразование в одномерный
  if double_array.count >= 5  #если число вложенных масивов больше 5
    raise  WrongNumberOfPlayersError.new("Only two players can play this game!")
  elsif double_array[1] != 'P' and double_array[1] != 'R' and double_array[1] != 'S'  #ошибки в выборе хода
    raise  NoSuchStrategyError.new("You give wrong attr!")
  elsif double_array[3] != 'P' and double_array[3] != 'R' and double_array[3] != 'S'  #ошибки в выборе хода
    raise  NoSuchStrategyError.new("You give wrong attr!")

  elsif double_array[1] == 'P'    #стратегия, если первый выбросил "Бумагу"
    if double_array[3] == 'R' or double_array[3] == 'P'
       ("#{double_array[0]} #{double_array[1]}")
    else
       ("#{double_array[2]} #{double_array[3]}")
    end

  elsif double_array[1] == 'R'    #стратегия, если первый выбросил "Камень"
    if double_array[3] == 'R' or double_array[3] == 'S'
       ("#{double_array[0]} #{double_array[1]}")
    else
       ("#{double_array[2]} #{double_array[3]}")
    end

  elsif double_array[1] == 'S'    #стратегия, если первый выбросил "Ножницы"
    if double_array[3] == 'P' or double_array[3] == 'S'
       ("#{double_array[0]} #{double_array[1]}")
    else
       ("#{double_array[2]} #{double_array[3]}")
    end
  end

end


puts(rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])) # => WrongNumberOfPlayersError
puts rps_game_winner([%w[player1 P], %w[player2 A]]) # => NoSuchStrategyError
puts(rps_game_winner([%w[player1 P], %w[player2 S]])) # => 'player2 S'
puts rps_game_winner([%w[player1 P], %w[player2 P]]) # => 'player1 P'
