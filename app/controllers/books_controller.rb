class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @books = Book.all
    respond_with(@books)
  end

  def show
    respond_with(@book)
  end

  def new
    @book = Book.new
    @book.book_chapters.build
    respond_with(@book)
  end

  def edit
    @book.book_chapters.build
  end

  def create
    @book = Book.new(book_params)
    @book.save
    respond_with(@book)
  end

  def update
    @book.update(book_params)
    respond_with(@book)
  end

  def destroy
    @book.destroy
    respond_with(@book)
  end

  private
    def set_book
      @book = Book.find(params[:id])
    end

    #
    # {book: {title: 'test', user_id: 'bla'}}
    def book_params
      params.require(:book).permit(:title, :summary, :flags, {
        book_chapters_attributes: [
          :title,
          :body,
          :id,
          :_destroy, {
            author_ids: [],
            reviewer_ids: [],
          }
        ]
      })

    end
end
