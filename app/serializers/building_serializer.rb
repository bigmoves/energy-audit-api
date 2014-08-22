class BuildingSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id,
                   :name,
                   :description,
                   :address,
                   :city,
                   :state,
                   :zipcode,
                   :space_type,
                   :area,
                   :created_at,
                   :updated_at

  has_many :users
  has_many :spaces
  has_many :equipments
  has_many :attachments
end
