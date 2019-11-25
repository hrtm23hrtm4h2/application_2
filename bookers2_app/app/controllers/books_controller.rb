class BooksController < ApplicationController
  def index
  	@books = Book.all
  	@book = Book.new
  end
  
  def new
    @book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
    @user = @book.user
    # @books = Book.all
  end

  def edit
    @book = Book.find(params[:id])
  end

  def create
  	@book = Book.new(book_params)
  	@book.user_id = current_user.id
    @book.save
  	redirect_to book_path(@book)
  end
  def update
    @book = Book.find(params[:id])
      @book.update(book_params)
      flash[:notice] = "You have updated book successfully."
      redirect_to book_path(@book.id)
  end
  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end
end
