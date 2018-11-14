class AddAlbumPhotosCountColumnToAlbums < ActiveRecord::Migration[5.2]
  def change
    add_column :albums, :album_photos_count, :integer
  end
end
