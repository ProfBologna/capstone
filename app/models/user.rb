class User < ApplicationRecord
  has_secure_password
  has_many :games
  has_many :solve_markers
end
