class Puzzle < ApplicationRecord
  belongs_to :room
  belongs_to :game, optional: true
end
