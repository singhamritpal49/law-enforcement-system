class Ticket < ApplicationRecord
  belongs_to :officer
  belongs_to :civilian
  before_validation :set_case_number
  validates :case_number, uniqueness: true
  def set_case_number
    self.case_number = rand 100000..500000
  end
end
