class UsersController < ApplicationController

  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end

  def show
    @book = Book.new
    @users = User.all
    @user = @book.user
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to books_path(@user.id), notice: "You have updated user successfully."
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

end
