class BooksController < ApplicationController

  def index 
    @books = Book.all

    respond_to do |format|
      format.json { render json: @books.as_json }
    end
  end

  def create
    @book = Book.create book_params

    respond_to do |format|
      format.json { render json: @book.as_json }
    end
  end

  def update
    @book = Book.find params[:id]
    @book.update_attributes book_params 

    respond_to do |format|
      format.json { render json: @book.as_json }
    end
  end

  def destroy
    @book = Book.find params[:id]
    @book.delete 

    respond_to do |format|
      format.json { render json: @book.as_json }
    end
  end  
private
  def book_params
    params.require(:book).permit(:title, :author, :description)  
  end
end
