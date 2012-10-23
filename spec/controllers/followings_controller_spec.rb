require 'spec_helper'

describe FollowingsController do

  before (:each) do
    @following = FactoryGirl.create(:following)
    @user = FactoryGirl.create(:user)
    @other_user = FactoryGirl.create(:other_user)
    sign_in @user
  end

  describe "destroy" do
    it "should be successful" do
      delete :destroy, :id => @following.id
      response.should redirect_to('/users/1')
    end
  end

end
