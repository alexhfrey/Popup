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
  
end
