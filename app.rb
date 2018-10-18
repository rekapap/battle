# myapp.rb
require 'sinatra'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/attack'

# Battle
class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb :play
  end

  post '/attack' do
    Attack.run(Game.current_game.opponent_of(Game.current_game.current_turn))
    if Game.current_game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = Game.current_game
    erb :attack
  end

  post '/switch-turns' do
    Game.current_game.switch_turns
    redirect('/play')
  end

  get '/game-over' do
    @game = Game.current_game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
