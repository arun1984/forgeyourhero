class HeroController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @username = User
  end

end
