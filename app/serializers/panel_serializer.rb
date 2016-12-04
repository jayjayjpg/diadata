class PanelSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :page
end
