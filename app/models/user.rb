class User < ApplicationRecord
  has_many :playlists
  has_many :media, through: :playlists
end
