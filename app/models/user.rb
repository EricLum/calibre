class User < ApplicationRecord
  has_many :playlists
  has_many :media, through: :playlists
  has_many :comments
end
