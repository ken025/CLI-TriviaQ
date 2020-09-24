require './config/environment'

class ApplicationController < Sinatra::Base

# making sure Sinatra knows where to find our app
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :welcome
  end

end
