require 'spec_helper'

describe FollowingsController do

  before (:each) do
    @user = FactoryGirl.create(:user)
    @other_user = FactoryGirl.create(:other_user)
    user_id = @user.id
    follower_id = @other_user.id
    sign_in @user
    @following = FactoryGirl.create(:following, {:user_id => user_id, :follower_id => follower_id})
  end

  describe "destroy" do
    it "should be successful" do
      delete :destroy, :id => @following.id
      response.should redirect_to('/users/' + @other_user.id.to_s)
    end
  end

end
