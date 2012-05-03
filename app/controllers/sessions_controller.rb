class SessionsController < ApplicationController
  def create
  auth = request.env["omniauth.auth"]
  user = User.find_by_facebook_id(auth["uid"])
	
	

	if user #Direct to Dashboard if an existing user
		session[:user_id] = user.id

	else #Direct to New Project signup if this is a new user
		user = User.create_with_omniauth(auth)
		if session[:referral]
			user.referral_source = session[:referral]
			user.save
			session[:referral] = nil
		end
		session[:user_id] = user.id
		
		flash[:success] = "Thanks for signing up for Snowball. We're anxious to hear more about you're doing!"
	end
  redirect_to '/'

end

def destroy
	session[:user_id] = nil
	redirect_to root_url, :notice => "You have signed out successfully!"
end

end
