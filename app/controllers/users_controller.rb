class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = (current_user.blank? ? User.all : User.find(:all, :conditions => ["id != ?", current_user.id]))
  end

  def show
    @user = User.find(params[:id])
  end

end
