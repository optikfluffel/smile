class FollowingsController < ApplicationController
  def create
    @following = current_user.followings.build(:follower_id => params[:follower_id])

    # Remember the other user for nicer output and redirect
    other_user = User.find(@following.follower_id)

    if @following.save
      flash[:notice] = "You now follow " + other_user.username + "."
    else
      flash[:error] = "Unable to follow " + other_user.username + "."
    end
    redirect_to other_user

  end

  def destroy
    @following = current_user.followings.find(params[:id])

    # Remember the other user for nicer output and redirect
    other_user = User.find(@following.follower_id)

    if @following.destroy
      flash[:notice] = "You unfollowed " + other_user.username + "."
    else
      flash[:error] = "Unable to unfollow " + other_user.username + "."
    end
    redirect_to other_user
  end
end
