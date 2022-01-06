class Game_logic

  def initialize
    @player1 = Player.new("Player1")
    @player2 = Player.new("Player2")
    @question = Questions.new
  end

  def game_start

    while @player1.lives > 0 && @player2.lives > 0
      puts "#{@player1.name} : #{@question.new_question}"
      user_input = gets.chomp.to_i

      puts user_input.inspect

      if user_input != @question.answer
        @player1.remove_life
      end

      puts "#{@player1.name} : has #{@player1.lives} left"

      if @player1.lives < 1 || @player2.lives < 1
        break
      end

      puts "#{@player2.name} : #{@question.new_question}"
      user_input = gets.chomp.to_i

      if user_input != @question.answer
        @player2.remove_life
      end

      if @player1.lives < 1 || @player2.lives < 1
        break
      end


      puts "#{@player2.name} : has #{@player2.lives} left"

    end

    if @player1.lives == 0
      puts "GAME OVER player 1 died"
    elsif
    puts "GAME OVER player 2 died"
    end
  end

end
