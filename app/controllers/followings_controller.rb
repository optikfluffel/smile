class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(:follower_id => params[:follower_id])

    # Remember the username for nicer output
    username = User.find(@following.follower_id).username

    if @following.save
      flash[:notice] = "You now follow " + username + "."
      redirect_to current_user
    else
      flash[:error] = "Unable to follow " + username + "."
      redirect_to current_user
    end

  end

  def destroy
    @following = current_user.followings.find(params[:id])

    # Remember the username for nicer output
    username = User.find(@following.follower_id).username

    if @following.destroy
      flash[:notice] = "You unfollowed " + username + "."
      redirect_to current_user
    else
      flash[:error] = "Unable to unfollow " + username + "."
      redirect_to root_url
    end
  end
end
