require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
    erb :user_input
    end
    get '/show' do
        erb :piglatin
    end
    post '/piglatin' do
        string= params[:string]
        piglatin= PigLatinizer.new(string)
        @output= piglatin.piglatin
        erb :piglatin
    end
end