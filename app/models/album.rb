class Album < ActiveRecord::Base
  belongs_to :genre
  has_many :album_songs
  has_many :songs, through: :album_songs
end
