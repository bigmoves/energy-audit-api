class Building < ActiveRecord::Base
  has_many :ownerships
  has_many :users, :through => :ownerships
  has_many :spaces
  has_many :equipments
  has_many :attachments
end
