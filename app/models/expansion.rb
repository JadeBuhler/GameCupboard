class Expansion < ApplicationRecord
    belongs_to :board_game
    validates :name, :price, :image, :description, :status, presence: true
    validates :price, numericality: true
    has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
validates_attachment :image, :presence => true,
:content_type => { :content_type => "image/jpg", :content_type => "image/jpeg" },
:size => { :in => 0..1000.kilobytes }
end
