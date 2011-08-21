class HerosController < ApplicationController
  before_filter :authenticate_user!, :except => [:index]
  
  def index
    @heros = Hero.paginate(:page => params[:page])
  end

  def create
    @hero = current_user.heros.build(params[:hero])
    if @hero.save
      redirect_to root_path, :flash => { :success => "Hero created!" }
    else
      redirect_to root_path, :flash => { :success => "Hero creation failed!" }
    end    
  end
  
  def new
    @hero = Hero.new
  end
  
end
