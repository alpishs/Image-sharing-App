json.extract! album_photo, :id, :album_id, :avatar, :photo_name, :tag_line, :created_at, :updated_at
json.url album_photo_url(album_photo, format: :json)
