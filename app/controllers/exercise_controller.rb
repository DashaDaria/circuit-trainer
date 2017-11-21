class ExerciseController < ApplicationController

  get '/exercises' do
    if logged_in?
      erb :'/exercises/list'
    else
      redirect '/login'
    end
  end


end
