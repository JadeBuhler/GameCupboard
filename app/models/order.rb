class Order < ApplicationRecord
    has_many :line_items
    belongs_to :user
    validates :price, :status, presence: true
    validates :price, numericality: true
end
