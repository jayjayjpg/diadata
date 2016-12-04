class ChapterSerializer < ActiveModel::Serializer
  attributes :id, :chapter_index, :title
  has_many :episodes, embed: :ids
end
