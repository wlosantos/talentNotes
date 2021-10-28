class NotesController < ApplicationController

  before_action :set_note, only: %i[ show ]
  before_action :set_search, only: %i[ index show ]

  def index; end

  def show; end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def set_search
    @q = Note.ransack(params[:q])
    @notes = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

end
