class LoginController < ApplicationController
  
  def new
  end

  def create
    user = User.find_by_email(params[:login][:email])
    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      flash[:notice] = "Bem-vindo #{current_user.name}"
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Obrigado pela presença."

    redirect_to root_path
  end

end