class BoardGame < ApplicationRecord
    has_many :expansions
    has_many :categories
    validates :name, :min_players, :max_players, :play_time, :price, :image, presence: true
    validates :price, numericality: true
end
