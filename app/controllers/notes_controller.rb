class NotesController < ApplicationController

  before_action :set_note, only: %i[ show edit update destroy ]
  before_action :set_search, except: %i[ update destroy ]

  def index; end

  def show; end

  def edit; end

  def new
    @note = current_user.notes.build
  end

  def create
    @note = current_user.notes.build(params_note)
    if @note.save
      redirect_to @note
    else
      render :new
    end
  end

  def update
    if @note.update(params_note)
      redirect_to @note
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to root_path
  end

  private

  def set_note
    @note = current_user.notes.find(params[:id])
  end

  def params_note
    params.require(:note).permit(:title, :content, :published, :priority)
  end

  def set_search
    @q = current_user.notes.ransack(params[:q])
    @notes = @q.result(distinct: true).order(created_at: :desc).page(params[:page])
  end

end
