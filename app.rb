require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/' do 
        input_from_user = params[:user_input]
        @piglatinized_input = PigLatinizer.new(input_from_user)

        erb :results

    end
end