class ExerciseController < ApplicationController

  get '/exercises' do
    if logged_in?
      erb :'/exercises/list'
    else
      redirect '/login'
    end
  end

  get '/exercises/:slug' do
    if logged_in?
      @exercise = Exercise.find_by_slug(params[:slug])
      erb :'/exercises/show'
    else
      redirect '/login'
    end
  end


end
