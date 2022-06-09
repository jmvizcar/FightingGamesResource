class Console < ApplicationRecord
  has_many :ports
  has_many :games, through: :ports
end
