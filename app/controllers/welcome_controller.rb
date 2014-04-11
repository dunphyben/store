class WelcomeController < ApplicationController
  def index
    @admins = Admin.all
  end
end
