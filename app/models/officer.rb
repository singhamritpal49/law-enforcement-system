class Officer < ApplicationRecord
    has_secure_password
    has_many :tickets
    has_many :civilians, through: :tickets
    validates :badge, uniqueness: true
end 
