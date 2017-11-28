class LineItem < ApplicationRecord
    belongs_to :order
    validates :price, :quantity, presence: true
end
