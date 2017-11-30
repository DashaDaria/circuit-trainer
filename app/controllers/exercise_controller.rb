class ExerciseController < ApplicationController

  get '/exercises' do
    erb :'/exercises/list'
  end

  get '/exercises/:slug' do
    if logged_in?
      @exercise = Exercise.find_by_slug(params[:slug])
      erb :'/exercises/show'
    else
      redirect to '/exercises'
    end
  end
end
