class FavoritesController < ApplicationController
  before_action :set_book
  
  def create
    # book = Book.find(params[:book_id])
    @favorite = Favorite.create(user_id: current_user.id, book_id: @book.id)
  end

  def destroy
    # book = Book.find(params[:book_id])
    @favorite = Favorite.find_by(user_id: current_user.id, book_id: @book.id)
    @favorite.destroy
  end

  def set_book
    @book = Book.find_by(id: params[:book_id])
  end
end
