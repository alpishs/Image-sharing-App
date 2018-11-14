class AlbumPhoto < ApplicationRecord
	mount_uploader :avatar, AvatarUploader
	belongs_to :album, :counter_cache => true
end
