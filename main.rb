require_relative 'player'
require_relative 'math_game'
require_relative 'question'

game = MathGame.new(Player.new("Player 1"), Player.new("Player 2"))
game.start_game