class Tracklist < ApplicationRecord
  belongs_to :user
  belongs_to :artist
  belongs_to :festival
  has_many :songs
  has_many :likes

end
