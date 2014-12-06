class UsersController < ApplicationController

  def index

  end

  def new
    @new_user = User.new
  end

  def create
    @new_user = User.create(user_params)
    @new_user.adm = false

    if @new_user.save
      redirect_to games_path
    else
      render :new
    end

  end

  private
  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation,
      :adm
    )
  end

end