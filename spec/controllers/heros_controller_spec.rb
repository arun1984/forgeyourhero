require 'spec_helper'

describe HerosController do
  include Devise::TestHelpers
  render_views
  
  describe 'Hero Model Testing' do
    before(:each) do
      @user       = Factory(:user)
      test_sign_in @user
      @hero_attr  = {
        :supername        => "superman",
        :realname         => "clark kent",
        :alias            => "man of steel",
        :gender           => "male",
        :alignment        => true,
        :height           => 180,
        :weight           => 180,
        :eyes             => "blue",
        :hair             => "black",
        :race             => "kryptonian",
        :occupation       => "reporter",
        :education        => "bsc",
        :language         => "tamil",
        :galaxy           => "krypton",
        :place_of_birth   => "pollachi",
        :power            => "flying",
        :description      => "an awesome person"
      }
    end
  
    it "should create a new instance with valid attributes" do
      @user.heros.create!(@hero_attr)
    end
    
    describe "user associations" do
      before(:each) do
        @hero = @user.heros.create(@hero_attr)
      end

      it "should have a user attribute" do
        @hero.should respond_to(:user)
      end

      it "should have the right associated user" do
        @hero.user_id.should == @user.id
        @hero.user.should == @user
      end
    end
    
    describe "validations" do
      it "should have a user id" do
        Hero.new(@hero_attr).should_not be_valid
      end

      it "should require nonblank content" do
        @user.heros.build(:supername => "").should_not be_valid
      end

      it "should reject long content" do
        @user.heros.build(:content => "a" * 151).should_not be_valid
      end
    end
    
  end
    
end