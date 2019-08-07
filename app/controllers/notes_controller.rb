class NotesController < ApplicationController
    def create
        @note = Note.new(note_params)
        @note.save
        redirect_to @note
    end

    def new
        @note = Note.new
        @note.save
    end

    def show   
        @note = Note.find(params[:id]) 
    end

    private 
    def article_params   
        params.require(:note).permit(:title, :text) 
    end
end