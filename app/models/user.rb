class User < ApplicationRecord

  has_secure_password
  has_many :tracklists
  has_many :verifications
  has_many :likes


end
