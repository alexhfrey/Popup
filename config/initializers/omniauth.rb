if Rails.env.production?  
Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '122628081204967', 'c3daa02c78ef4475dd74d26560a9870c', :scope => 'email, offline_access' 	
	
	
  
	{:client_options => {:ssl => {:ca_path => '/usr/lib/ssl/certs/ca-certificates.crt'}}}
	end
if Rails.env.staging?
	provider :facebook, '333924066629604', '0cc1164e4805256031da55dbb9740125', :scope => 'email, offline_access' 	
	
end  
else

	Rails.application.config.middleware.use OmniAuth::Builder do
	provider :facebook, '333924066629604', '0cc1164e4805256031da55dbb9740125', :scope => 'email, offline_access'  

end
end

