require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    p = PigLatinizer.new()
    p.piglatinize(params[:user_phrase])
  end
end