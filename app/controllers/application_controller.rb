require './config/environment'

class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  use Rack::Flash

  configure do
    enable :sessions
    set :session_secret, "password_security"
    set :public_folder, 'public'
    set :views, 'app/views'
    use Rack::Flash

  end

  get '/' do
     = "Hooray, Flash is working!"
    erb :index
  end


  helpers do
    def logged_in?
      !!current_user
    end

    def current_user
      @current_user ||= User.find(session[:id]) if session[:id]
    end
  end

end
