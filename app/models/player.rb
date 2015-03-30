class Player < ActiveRecord::Base
  # Remember to create a migration!
  has_many :games, through: :players_game
  has_many :players_games
end
