class BoardGame < ApplicationRecord
    has_many :expansions
    belongs_to :category, optional: true

    validates :name, :min_players, :max_players, :play_time, :price, :image, :description, :status, :stock_quantity, presence: true

    validates :min_players, :max_players, :price, :stock_quantity, numericality: true

    has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "400x400" }
    validates_attachment :image, :presence => true,
      :content_type => { :content_type => /\Aimage\/.*\z/}, :size => { :in => 0..1000.kilobytes }
end
