class Task < ApplicationRecord
	mount_uploader :image, AvatarUploader
end
