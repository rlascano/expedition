class Trucker < ApplicationRecord
  default_scope {order(:last_name, :first_name)}

  validates :first_name, :last_name, :document, :carnet_expiration_date, presence: true
  validates :document, uniqueness: true
  validate :carnet_expiration_date_vigence

  def full_name
    last_name + ', ' + first_name
  end

  private
    def carnet_expiration_date_vigence
      if carnet_expiration_date.present? && carnet_expiration_date < Date.today
        errors.add(:carnet_expiration_date, 'is expirated!')
      end
    end
end
