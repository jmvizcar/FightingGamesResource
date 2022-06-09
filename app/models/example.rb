class Example < ApplicationRecord
  has_one_attached :image
  belongs_to :term
end
