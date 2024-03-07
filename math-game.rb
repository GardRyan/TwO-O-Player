# generates new questions

#keep track of the current player

#handle logic for winner/scores


class MathGame
  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
  end

  def start_game
    until game_over?
      puts "----- NEW TURN -----"
      question = Question.new
      puts "#{current_player.name}: #{question}"
      print "> "
      answer = gets.chomp.to_i

      if answer == question.answer
        puts "Correct!"
      else
        puts "Incorrect!"
        current_player.lose_life
      end

      puts "Scores:"
      @players.each { |player| puts "#{player.name}: #{player.lives}/3" }

      switch_player
    end

    puts "#{current_player.name} wins with a score of #{current_player.lives}/3"
    puts "----- GAME OVER -----"
  end

  private

  def current_player
    @players[@current_player_index]
  end

  def switch_player
    @current_player_index = (@current_player_index + 1) % 2
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end
end