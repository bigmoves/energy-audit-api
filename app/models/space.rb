class Space < ActiveRecord::Base
  belongs_to :building
  has_many :equipments
end
