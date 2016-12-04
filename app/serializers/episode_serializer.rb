class EpisodeSerializer < ActiveModel::Serializer
  attributes :id, :title
  has_one :chapter
  has_many :pages, embed: :ids
end
