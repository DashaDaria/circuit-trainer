class NotesController < ApplicationController

  post '/exercises/:slug/notes' do
    if logged_in?
      if @exercise = Exercise.find_by_slug(params[:slug])
        @exercise.notes.create(content: params[:note][:content], user: current_user)
        redirect to "/exercises/#{@exercise.slug}/notes"
      else
        redirect to '/excercises'
      end
    end
  end

  get '/exercises/:slug/notes' do
    if logged_in?
      @exercise = Exercise.find_by_slug(params[:slug])
      @notes = @exercise.notes
      erb :'notes/show'
    else
      redirect to '/excercises'
    end
  end
end
