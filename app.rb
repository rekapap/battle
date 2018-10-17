# myapp.rb
require 'sinatra'

# Battle
class Battle < Sinatra::Base
  get '/' do
    'Testing infrastructure working!'
  end
  run! if app_file == $PROGRAM_NAME
end
