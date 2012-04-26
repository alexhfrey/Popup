class User < ActiveRecord::Base

def self.create_with_omniauth(auth)
create! do |user|
	user.facebook_id = auth["uid"]
	user.name = auth["info"]["name"]
	user.email = auth["info"]["email"]
	user.token = auth['credentials']['token'] #Store token info for later use
	
	
end
end
end
