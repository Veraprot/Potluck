class Dish < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  # TODO: MAKE SURE UR FORM REFLECTS THE ERROR
  # MESSAGES ASSOCIATED W THIS VALIDATION
end
