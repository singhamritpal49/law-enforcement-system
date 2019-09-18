class Civilian < ApplicationRecord
    has_many :tickets
    has_many :officers, through: :tickets
end
