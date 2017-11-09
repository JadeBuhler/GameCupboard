class User < ApplicationRecord
    has_many :orders
    validates :first_name, :last_name, :address, :city, :province, :email, presence: true
    validates :email, uniqueness: true
end
