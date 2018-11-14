class CreateAlbumPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :album_photos do |t|
      t.integer :album_id
      t.string :avatar
      t.string :photo_name
      t.string :tag_line

      t.timestamps
    end
  end
end
