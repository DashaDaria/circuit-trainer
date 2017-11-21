class CircuitController < ApplicationController

  get '/circuits' do
    if logged_in?
      @user = current_user
    erb :'circuits/circuits'
    else
      redirect '/login'
    end
  end

  get '/circuits/new' do
    if logged_in?
      erb :'circuits/new'
    else
      redirect '/login'
    end
  end


end
