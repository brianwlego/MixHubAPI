class Song < ApplicationRecord
  belongs_to :tracklist
  has_many :verifications
end
