class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  validates :name, presence: true
  validates :category_id, numericality: { other_than: 1 , message: "can't be blank"}

  scope :latest, -> { order(created_at: :desc)}
  scope :old, -> { order(created_at: :asc)}
  scope :deadline, -> { order(deadline: :asc)}


end
