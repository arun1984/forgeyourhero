require 'spec_helper'

describe HerosController do
  include Devise::TestHelpers
  render_views
  
  before(:each) do
    @user       = Factory(:user)
    @other_user = Factory(:user, :email => Factory.next(:email))
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
 
  ##################################################################
  ################# HERO model spec ###########################
  ################################################################## 
  describe 'Hero Model Testing' do
    before(:each) do
      test_sign_in @user
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
    
    # should fill in other field validations
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
    ##################################################################
  ################# HERO controller spec ###########################
  ##################################################################
  describe 'Hero Controller Testing' do
    describe "POST 'create'" do
      
      describe "for an authorized user" do
        before(:each) do
          test_sign_in @user
        end
        
        it "should create a hero" do
          lambda do
            post :create, :hero => @hero_attr
          end.should change(Hero, :count).by(1)
        end
      end

      describe "for an unauthorized user" do
        it "should not create a hero" do
          lambda do
            post :create, :hero => @hero_attr
          end.should_not change(Hero, :count).by(1)
        end
      end
    end
  end
end
