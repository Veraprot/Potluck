class Dish < ApplicationRecord
  belongs_to :user
  belongs_to :events
  validates :name, presence: true
  accepts_nested_attributes_for :user
  # attr_accessible :name, :description
end
