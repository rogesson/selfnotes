class Note < ApplicationRecord
  belongs_to :user
  belongs_to :category

  #scope :priority, -> { where(important: true) }
  scope :priority, -> { where.not(priority: nil).order(:priority) }
end
