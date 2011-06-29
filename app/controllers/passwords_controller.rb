class PasswordsController < ApplicationController
  before_filter :authenticate_user!

  def edit
    @user = current_user
    render :template => 'passwords/edit', :locals => {:resource => @user, :resource_name => User }
  end

  def update
    @user = current_user
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      sign_in(@user, :bypass => true)
      redirect_to root_path, :notice => "Password updated!"
    else
      render :edit
    end
  end
end
