class BoardGame < ApplicationRecord
    has_many :expansions
    validates :name, :min_players, :max_players, :play_time, :price, :image, presence: true
    validates :price, numericality: true
end
