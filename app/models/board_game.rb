class BoardGame < ApplicationRecord
    has_many :expansions
    belongs_to :category, optional: true
    validates :name, :min_players, :max_players, :play_time, :price, :image, :description, :status, presence: true
    validates :min_players, :max_players, :price, numericality: true
end
