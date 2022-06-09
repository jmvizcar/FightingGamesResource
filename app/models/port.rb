class Port < ApplicationRecord
  belongs_to :console
  belongs_to :game
end
