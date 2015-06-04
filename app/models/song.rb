class Song < ActiveRecord::Base
  has_many :album_songs
  has_many :albums, through: :album_songs
end
