class Ticket < ApplicationRecord
  belongs_to :officer
  belongs_to :civilian
end
