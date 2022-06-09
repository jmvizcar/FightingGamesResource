class Concept < ApplicationRecord
  belongs_to :game_series, polymorphic: true
  belongs_to :term
end
