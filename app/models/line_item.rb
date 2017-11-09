class LineItem < ApplicationRecord
    belongs_to :order
    validates :price, :quantity, presence: true
    validates :price, :quantity, numericality: true
end
