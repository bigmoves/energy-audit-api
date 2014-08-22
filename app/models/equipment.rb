class Equipment < ActiveRecord::Base
  belongs_to :building
  belongs_to :space
  has_many :attachments
end
