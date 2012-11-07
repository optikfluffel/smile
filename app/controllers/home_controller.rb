class HomeController < ApplicationController
  def index
    @users = User.all
    # TODO: Add timeline
  end
end
