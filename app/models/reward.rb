class Reward < ActiveRecord::Base
  attr_accessible :item, :quantity, :value, :event_id
  belongs_to :events
end
