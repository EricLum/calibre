class Medium < ApplicationRecord
  has_many :playlists
  has_many :users, through: :playlists
  has_many :comments
end
