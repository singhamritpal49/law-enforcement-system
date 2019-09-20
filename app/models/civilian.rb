class Civilian < ApplicationRecord
    has_many :tickets
    has_many :officers, through: :tickets
    validates :social_security_number, uniqueness: true
    validates :driver_license, uniqueness: true
end
