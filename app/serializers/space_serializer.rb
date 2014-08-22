class SpaceSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id, :name, :area, :created_at, :updated_at

  has_many :equipments
end
