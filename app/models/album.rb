class Album < ApplicationRecord
	has_many :album_photos
	accepts_nested_attributes_for :album_photos
	belongs_to :user
end
