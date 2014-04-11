class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by_email(params[:email])
    if admin && admin.authenticate(params[:password])
      session[:admin_id] = admin.id
      flash.now.alert = "Admin logged in successfully"
      render 'admins/show'
    else
      flash.now.alert = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    render 'show', notice: "Logged out!"
  end

  def show
    @admin = Admin.find(params[:id])
  end
end
