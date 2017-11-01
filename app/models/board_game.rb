class BoardGame < ApplicationRecord
    validates :name, :min_players, :max_players, :play_time, :price, presence: true
    validates :price, numericality: true
end
