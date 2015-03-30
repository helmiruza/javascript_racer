enable :sessions

get '/game' do
	@player1 = Player.find_by(name: "Player 1")
	@player2 = Player.find_by(name: "Player 2")

	session[:start_time] = Time.now

	erb :game
end

post '/result' do
	@player1 = Player.find_by(name: "Player 1")
	@player2 = Player.find_by(name: "Player 2")

	session[:player1] = @player1.id
	session[:player2] = @player2.id
	new_game = Game.create(time: Time.now - session[:start_time])

	player1 = Player.find_by(id: session[:player1])
	player1.players_games.create(game_id: new_game.id, player_id: session[:player1], winner: params[:playersgame][:winner],finished: true)

	player2 = Player.find_by(id: session[:player2])
	player2.players_games.create(game_id: new_game.id, player_id: session[:player2], winner: params[:playersgame][:winner],finished: true)
	session.clear

	redirect to "/"

end
