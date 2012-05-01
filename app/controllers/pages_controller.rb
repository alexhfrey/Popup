class PagesController < ApplicationController
  def home
  @events = Event.all
  end
  
  def about    
  end

  def ambassador
  end 
  
  def contact
  end
  
  def merchants
  end
  
  def city
  end
  
  def welcome
  if current_user 
	redirect_to pages_home_path and return
  end
  render :layout=> "layoutwelcome"
  #...
  end
  
end
