class HerosController < ApplicationController
  before_filter :authenticate_user!, :only => []
  
  def home
    # if signed_in?
      # @hero = Hero.new
      @heros_feed_items = current_user.heros.paginate(:page => params[:page])
    # end
  end

  def show
  end
  
  def new
    @hero = Hero.new
  end
  
  def create
    @hero = current_user.heros.build(params[:hero])
    if @hero.save
      redirect_to root_path, :flash => { :success => "Hero created!" }
    else
      flash[:success] = "Hero creation failed!"
    end    
  end

  def destroy
  end  
end
