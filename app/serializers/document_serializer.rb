class DocumentSerializer < ActiveModel::Serializer
  attributes :name, :workspace_id, :doctext, :paid, :deadline, :id, :image, :link
end
