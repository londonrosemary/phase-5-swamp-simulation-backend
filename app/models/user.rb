class User < ApplicationRecord
    has_many :pets
    validates :username, uniqueness: true
    validates :email, uniqueness: true
    
    # has_secure_password
end
