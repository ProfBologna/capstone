class Room < ApplicationRecord
  has_many :puzzles

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end
end