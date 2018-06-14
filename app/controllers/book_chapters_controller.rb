class BookChaptersController < ApplicationController
  before_action :set_book_chapter, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @book_chapters = BookChapter.all
    respond_with(@book_chapters)
  end

  def show
    respond_with(@book_chapter)
  end

  def new
    @book_chapter = BookChapter.new
    respond_with(@book_chapter)
  end

  def edit
  end

  def create
    @book_chapter = BookChapter.new(book_chapter_params)
    @book_chapter.save
    respond_with(@book_chapter)
  end

  def update
    @book_chapter.update(book_chapter_params)
    respond_with(@book_chapter)
  end

  def destroy
    @book_chapter.destroy
    respond_with(@book_chapter)
  end

  private
    def set_book_chapter
      @book_chapter = BookChapter.find(params[:id])
    end

    def book_chapter_params
      params.require(:book_chapter).permit(:title, :body)
    end
end
