class Recyclable < ActiveRecord::Base
  attr_accessible :item, :value, :event_id
  belongs_to :events
end