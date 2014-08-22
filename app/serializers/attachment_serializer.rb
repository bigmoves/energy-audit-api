class AttachmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :type, :size, :url, :created_at, :updated_at
end
