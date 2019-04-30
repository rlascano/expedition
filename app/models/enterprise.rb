class Enterprise < ApplicationRecord
  default_scope { order(:name) }

  has_one :address
  accepts_nested_attributes_for :address

  validates :name, :cuit_number, presence: true
  validates :cuit_number, uniqueness: true
  validate :cuit_number_valid

  private
    def cuit_number_valid
      if cuit_number.length != 11
        errors.add(:cuit_number, "Verificar cantidad de digitos")
      else
        numero_validador = 5432765432
        arre_cuit = cuit_number.split('')
        arre_validador = numero_validador.to_s.split('')
        aux = 0

        (0..10).each do |i|
          aux += arre_cuit[i].to_i * arre_validador[i].to_i
        end

        aux = 11 - (aux % 11)
        aux = 0 if aux == 11

        if arre_cuit[10].to_i != aux
          errors.add(:cuit_number, "no válido")
        end
      end
    end
end
