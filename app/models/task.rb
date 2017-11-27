class Task < ApplicationRecord
	mount_uploader :image, AvatarUploader
	belongs_to :user
end
