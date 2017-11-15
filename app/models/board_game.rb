class BoardGame < ApplicationRecord
    has_many :expansions
    belongs_to :category, optional: true
    validates :name, :min_players, :max_players, :play_time, :price, :image, :description, :status, presence: true
    validates :min_players, :max_players, :price, numericality: true
    has_attached_file :image, styles: { small: "100x100", med: "200x200", large: "300x300" }
    validates_attachment :image, :presence => true,
      :content_type => { :content_type => "image/jpg", :content_type => "image/jpeg"}, :size => { :in => 0..1000.kilobytes }
end
