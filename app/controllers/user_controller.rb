class UserController < ApplicationController

  get '/signup' do
      if logged_in?
        redirect '/circuits'
      else
      erb :'users/signup'
    end
  end

  post '/signup' do
      if params[:username].empty? || params[:email].empty? || params[:password].empty?
        redirect '/signup'
      else
        @user = User.create(params)
        session[:id] = @user.id
        redirect '/circuits'
    end
  end

  get '/login' do
    if logged_in?
      redirect '/circuits'
    else
      erb :'users/login'
    end
  end

  post '/login' do
    user = User.find_by(:username => params[:username]) || User.find_by(:email => params[:email])

    if user && user.authenticate(params[:password])
      session[:id] = user.id
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

  get '/users/:slug' do
    @user = User.find_by_slug(params:slug)
    @circuits = @user.circuits
    erb :'users/show'
  end
end
