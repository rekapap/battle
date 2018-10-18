# myapp.rb
require 'sinatra'
require'./lib/game'
require './helpers/attack_helper'
require './lib/computer_player'
require './lib/player'
require './lib/attack'

# Battle
class Battle < Sinatra::Base
  enable :sessions
  helpers AttackHelper

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    if params[:player_2_name].empty?
      player_2 = ComputerPlayer.new
    else
      player_2 = Player.new(params[:player_2_name])
    end
    Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.current_game
    erb :play
  end

  post '/attack' do
    attack_and_redirect(Game.current_game)
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
