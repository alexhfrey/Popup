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
  @user = current_user
  if @user.nil?
	redirect_to pages_welcome_path and return
   end 
  end
  
  def welcome
  if current_user 
	if current_user.city?
		redirect_to '/events' and return
	else
		redirect_to pages_city_path and return
	end
  end
  render :layout=> "layoutwelcome"
  #...
  end
  
end
