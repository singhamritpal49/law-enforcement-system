class Ticket < ApplicationRecord
  belongs_to :officer
  belongs_to :civilian
  validates :case_number, uniqueness: true
end
