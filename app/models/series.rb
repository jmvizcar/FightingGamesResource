class Series < ApplicationRecord
  has_many :concepts, as: :game_series
  has_many :games
  has_many :terms, through: :concepts
  belongs_to :developer
end
