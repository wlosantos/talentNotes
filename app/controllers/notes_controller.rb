class NotesController < ApplicationController

  def index
    @q = Note.ransack(params[:q])
    @notes = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

end
