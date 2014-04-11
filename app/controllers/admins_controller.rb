class AdminsController < ApplicationController

  def index
    @admins = Admin.all
  end

  def new
    @admin = Admin.new
  end

  def show
    @admin = Admin.find(session[:admin_id])
  end

  def create
    @admin = Admin.new(admin_params)
    if @user.save
      redirect_to root_url, notice: "Admin created"
    else
      render "new"
    end
  end


  private
  def admin_params
    params.require(:admin).permit(:email, :name, :password, :password_confirmation)
  end

end
