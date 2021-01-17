class Note < ApplicationRecord
  belongs_to :user
  belongs_to :category

  PRIORITIES = [1, 2, 3]

  scope :priority, -> { where.not(priority: nil).order(:priority) }

  def self.priorities_for_select
    [
      ["#1", 1],
      ["#2", 2],
      ["#3", 3]
    ]
  end
end
