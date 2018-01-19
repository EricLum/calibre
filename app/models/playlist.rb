class Playlist < ApplicationRecord
  has_many :media
  belongs_to :user
end
