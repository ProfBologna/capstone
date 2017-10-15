class SolveMarker < ApplicationRecord
  belongs_to :user
  belongs_to :puzzle, optional: true
  belongs_to :game
end
