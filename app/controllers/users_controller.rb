class UsersController < ApplicationController
  def edit
  if current_user.nil?
	redirect_to pages_welcome_path and return
  else 
	u = current_user
	u.city = params[:city]
	u.save
	redirect_to '/events' and return
  end
  end
end
