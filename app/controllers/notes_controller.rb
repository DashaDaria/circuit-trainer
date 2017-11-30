class NotesController < ApplicationController

  post '/exercises/:slug' do
    if logged_in?
      if @exercise = Exercise.find_by_slug(params[:slug])
        @exercise.notes.create(content: params[:note][:content], user: current_user)
        redirect to "/exercises/#{@exercise.slug}"
      else
        redirect to '/exercises'
      end
    end
  end
end
