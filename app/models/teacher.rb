class Teacher < ApplicationRecord
	
	mount_uploader :image, AvatarUploader
end
