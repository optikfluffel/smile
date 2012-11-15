class HomeController < ApplicationController
  def index
    if not current_user.blank?
      @timeline = current_user.timeline
    end
  end
end
