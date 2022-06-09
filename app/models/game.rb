class Game < ApplicationRecord
  has_many :concepts, as: :game_series
  has_many :terms, through: :concepts
  has_many :ports
  has_many :consoles, through: :ports
  belongs_to :series
end
