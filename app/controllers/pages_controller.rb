class PagesController < ApplicationController
  def home
    if signed_in?
      redirect_to user_root_path
    end
  end

  def contact
  end

  def about
  end

  def help
  end

end
