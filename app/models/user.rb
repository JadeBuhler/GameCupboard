class User < ApplicationRecord
    has_many :orders
    validates :first_name, :last_name, :address, :city, :province, :email, presence: true
end
