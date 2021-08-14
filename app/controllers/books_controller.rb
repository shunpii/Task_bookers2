class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(@book.id)
  end

  def index
    @books = Book.all
  end

  def show
  end

  def destroy
  end

  private
  def book_params
    params.require(:book).permit(:title, :body, :image)
  end
end
