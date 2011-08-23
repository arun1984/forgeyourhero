require 'spec_helper'

describe HerosController do
  include Devise::TestHelpers
  render_views
    
  before(:each) do
    @user       = Factory(:user)
    # @request.env["devise.mapping"] = :user
    # @user = Factory.create(:user)
    sign_in @user
    @hero_attr   = Factory(:hero_attr)
  end
  
  it "should create a new instance with valid attributes" do
    @user.heros.create!(@hero)
  end
    
end