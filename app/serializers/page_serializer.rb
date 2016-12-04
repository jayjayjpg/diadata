class PageSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :episode
  has_many :panels, embed: :ids
end
