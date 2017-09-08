class NotesController < ApplicationController
  def index
    @notes = Note.all.order("created_at DESC")
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_note
    @note = Note.find(params[:id])
  end

  def note_params
    params.require(:note).permit(:title, :content)
  end
end
