class Expansion < ApplicationRecord
    belongs_to :board_game
    validates :name, :price, :image, :description, :status, presence: true
    validates :price, numericality: true
end
