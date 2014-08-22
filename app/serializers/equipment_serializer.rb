class EquipmentSerializer < ActiveModel::Serializer
  embed :ids, include: true

  attributes :id,
             :building_id,
             :space_id,
             :name,
             :location,
             :manufacturer,
             :size,
             :quantity,
             :model_number,
             :serial_number,
             :created_at,
             :updated_at

  has_many :attachments
end
