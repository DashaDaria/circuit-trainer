class UserController < ApplicationController

  get '/signup' do
      if logged_in?
        redirect '/circuits'
      else
      erb :'users/signup'
    end
  end

  post '/signup' do
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect '/circuits'
    else
      erb :'users/signup'
    end
  end

  get '/login' do
    if logged_in?
      redirect '/circuits'
    else
      redirect to '/'
    end
  end

  post '/login' do
    user = User.find_by(:username => params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect '/circuits'
    else
      redirect '/login'
    end
  end

  get '/logout' do
    if logged_in?
      session.clear
      redirect '/login'
    else
      redirect '/'
    end
  end
end
