class CreatePlayersGames < ActiveRecord::Migration
  def change
  	create_table :players_games do |u|
  		u.integer :game_id
  		u.integer :player_id
  		u.integer :winner
  		u.boolean :finished
  		u.timestamps null:false
  	end
  end
end
