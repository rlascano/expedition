class Ticket < ApplicationRecord
  belongs_to :client, class_name: 'Enterprise'
  belongs_to :carrier, class_name: 'Enterprise'
  belongs_to :trucker

  has_many :ticket_details, dependent: :destroy
  has_many :observations, dependent: :destroy

  accepts_nested_attributes_for :ticket_details

  validates :client, presence: true

  before_save :plates_to_uppercase

  def client_name
    client.try(:name)
  end

  def client_name=(name)
    self.client = Enterprise.find_by(name: name) if name.present?
  end

  def carrier_name
    carrier.try(:name)
  end

  def carrier_name=(name)
    self.carrier = Enterprise.find_by(name: name) if name.present?
  end

  def trucker_name
    trucker.try(:full_name)
  end

  def trucker_name=(name)
    last_name = name.split(",")[0]
    first_name = name.split(",")[1].strip
    self.trucker = Trucker.find_by(last_name: last_name, first_name: first_name) if last_name.present?
  end

  private

    def plates_to_uppercase
      self.truck_plate.upcase!
      self.trailer_plate.upcase!
    end

end
