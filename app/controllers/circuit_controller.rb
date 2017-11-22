class CircuitController < ApplicationController

  get '/circuits' do
    if logged_in?
      @user = current_user
    erb :'circuits/circuits'
    else
      flash[:message] = "Please login."
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

  post '/circuits' do
    if !params[:circuit][:name].empty?
      @circuit = Circuit.create(name: params[:circuit][:name], duration: params[:circuit][:duration], difficulty: params[:circuit][:difficulty])
      @circuit.exercise_ids = params[:exercises]
      current_user.circuits << @circuit
      @circuit.save
      redirect "/circuits"
    else
      flash[:message] = "A circuit needs to have a name."
      redirect '/circuits/new'
    end
  end

  get '/circuits/:slug/edit' do
    if logged_in?
      @circuit = Circuit.find_by_slug(params[:slug])
      @user = current_user
      erb :'circuits/edit'
    else
      redirect '/login'
    end
  end

  patch '/circuits/:slug' do
      @circuit = Circuit.find_by_slug(params[:slug])
      @circuit.update(params[:circuit])
      @circuit.exercise_ids = params[:exercises]
      @circuit.save
      redirect "/circuits/#{@circuit.slug}"
  end

  get '/circuits/:slug' do
    if logged_in?
      @circuit = Circuit.find_by_slug(params[:slug])
      erb :'circuits/show'
    else
      flash[:message] = "Please login."
      redirect '/login'
    end
  end

  delete '/circuits/:slug/delete' do
    @circuit = Circuit.find_by_slug(params[:slug])
    if logged_in?
        @circuit.delete
        redirect '/circuits'
    else
      flash[:message] = "Please login."
      redirect '/login'
    end
  end
end
