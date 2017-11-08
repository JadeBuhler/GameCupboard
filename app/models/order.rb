class Order < ApplicationRecord
    belongs_to :user, optional: true
    validates :price, presence: true
    validates :price, numericality: true
end
