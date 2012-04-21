class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.integer :user_id
      t.string :path
      t.string :cover
      t.string :title
      t.string :artist
      t.text :description
      t.text :audio_text
      t.integer :category_id
      t.integer :genre_id
      t.string :duration
      t.string :listener
      t.boolean :downloadable
      t.boolean :playable
      t.string :audio_type

      t.timestamps
    end
  end
end
