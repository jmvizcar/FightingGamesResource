class Term < ApplicationRecord
  has_many :concepts
  has_many :games, through: :concepts
  has_many :series, through: :concepts
  has_many :examples
  serialize :tag, Array
end
