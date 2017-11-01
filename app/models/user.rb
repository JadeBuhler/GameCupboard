class User < ApplicationRecord
    validates :first_name, :last_name, :address, :city, :province, :email, presence: true
end
