class BooksController < ApplicationController

  def index
    @book= Book.new
    @books= Book.all
  end

  def edit
    @book=Book.find(params[:id])
  end

  def update
     @book=Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "succsessfully"
     redirect_to show_book_path(@book.id)
    else
     @books= Book.all
     render :show

    end
  end

  def destroy
    book=Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end

  def show
    @book=Book.find(params[:id])
  end

  def create
    @book= Book.new(book_params)
    if @book.save
      flash[:notice] = "succsessfully"
      redirect_to show_book_path(@book.id)
    else
      @books= Book.all
      render :index
    end

  end

  private

  def
  book_params
    params.require(:book).permit(:title, :body)
  end

end
