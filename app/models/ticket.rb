class Ticket < ApplicationRecord
  belongs_to :client, class_name: 'Enterprise'
  belongs_to :carrier, class_name: 'Enterprise'
  belongs_to :trucker
  belongs_to :product
end
