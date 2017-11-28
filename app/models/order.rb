class Order < ApplicationRecord
    has_many :line_items
    belongs_to :user
    validates :price, :tax_cost, :status, presence: true
end
