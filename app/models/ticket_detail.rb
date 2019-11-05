class TicketDetail < ApplicationRecord
  belongs_to :product
  belongs_to :category
  belongs_to :ticket
end
