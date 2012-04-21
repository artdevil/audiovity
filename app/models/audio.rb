class Audio < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre
  belongs_to :category
  attr_accessible :path, :cover, :title, :artist, :description, :audio_text, :category_id,
                  :genre_id, :duration, :listener, :downloadable, :playable, :audio_type, :user_id
  validates :path, :cover, :title, :artist,
            :genre_id, :user_id, :presence => true
  mount_uploader :path, PathUploader
  mount_uploader :cover, CoverUploader
end
