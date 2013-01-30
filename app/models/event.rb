class Event < ActiveRecord::Base
  attr_accessible :date, :contact, :email, :location, :name, :phone
  has_many :rewards
  has_many :recyclables
  # has_many :users, :recyclables, :rewards
end
