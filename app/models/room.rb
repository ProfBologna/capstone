class Room < ApplicationRecord
  has_many :puzzles
  has_many :items

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end
end
