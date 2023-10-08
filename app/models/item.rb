class Item < ApplicationRecord
  validates :name, presence: true

  scope :latest, -> { order(created_at: :desc)}
  scope :old, -> { order(created_at: :asc)}
  scope :deadline, -> { order(deadline: :asc)}

end
