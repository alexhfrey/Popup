class Event < ActiveRecord::Base
mount_uploader :picture1, ImageUploader  
mount_uploader :picture2, ImageUploader 
mount_uploader :picture3, ImageUploader 
mount_uploader :picture4, ImageUploader 
mount_uploader :picture5, ImageUploader 

end
