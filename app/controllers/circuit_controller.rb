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

  post '/circuits' do
    if !params[:circuit][:name].empty?
      @circuit = Circuit.create(name: params[:circuit][:name], duration: params[:circuit][:duration], difficulty: params[:circuit][:difficulty])
      @circuit.exercise_ids = params[:exercises]
      current_user.circuits << @circuit
      @circuit.save
      redirect "/circuits/#{@circuit.slug}"
    else
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
    if @circuit.user_id = current_user.id && !params[:circuit][:name].empty?
      @circuit.update(params[:circuit])
      @circuit.exercise_ids = params[:exercises]
      @circuit.save
      redirect "/circuits/#{@circuit.slug}"
    else
      redirect "/circuits/#{@circuit.slug}/edit"
    end
  end

  get '/circuits/:slug' do
    if logged_in?
      @circuit = Circuit.find_by_slug(params[:slug])
      erb :'circuits/show'
    else
      redirect '/login'
    end
  end

end
