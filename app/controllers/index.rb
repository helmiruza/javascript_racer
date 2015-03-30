get '/' do
  # Look in app/views/index.erb
  @player1 = Player.find_by(name: "Player 1")
	@player2 = Player.find_by(name: "Player 2")
	@games = Game.all
  erb :index
end
