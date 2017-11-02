class Expansion < ApplicationRecord
    belongs_to :board_game
    validates :name, :price, :image, presence: true
    validates :price, numericality: true
end
