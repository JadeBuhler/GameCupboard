class Expansion < ApplicationRecord
    belongs_to :board_game
    validates :name, :price, :image, :description, :status, :stock_quantity, presence: true
    validates :price, :stock_quantity, numericality: true
    has_attached_file :image, styles: { small: "64x64", med: "200x200", large: "400x400" }
validates_attachment :image, :presence => true,
:content_type => { :content_type => "image/jpeg" },
:size => { :in => 0..1000.kilobytes }
end
