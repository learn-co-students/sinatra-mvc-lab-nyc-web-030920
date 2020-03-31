require_relative 'config/environment'

class App < Sinatra::Base

    post '/piglatinize' do
        pl = PigLatinizer.new
        @piglatin = pl.piglatinize(params[:user_phrase])
        erb :results
      end

    get '/' do 
        erb :user_input
    end
end