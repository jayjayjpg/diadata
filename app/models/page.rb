class Page < ApplicationRecord
  belongs_to :episode
  has_many :panels
end
