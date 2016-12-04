class Episode < ApplicationRecord
  belongs_to :chapter
  has_many :pages
end
