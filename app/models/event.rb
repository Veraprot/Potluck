class Event < ApplicationRecord
  # Associations
  has_many :users, through: :event_users
  has_many :event_users

  # Validation
  validates_presence_of :name, on: :create, message: "Please pick a name for your potluck"
  validates_presence_of :date, on: :create, message: "Please pick a date for your potluck"
  validates_presence_of :location, on: :create, message: "can't be blank"



end
