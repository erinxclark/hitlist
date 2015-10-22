class List < ActiveRecord::Base
  validates :item, :presence => true
end
