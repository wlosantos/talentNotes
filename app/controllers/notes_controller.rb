class NotesController < ApplicationController

  def index
    @notes = Note.page(params[:page])
  end

end
