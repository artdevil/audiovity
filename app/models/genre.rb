class Genre < ActiveRecord::Base
  has_many :audios
end
