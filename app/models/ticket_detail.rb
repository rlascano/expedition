class TicketDetail < ApplicationRecord
  belongs_to :product
  belongs_to :category
  belongs_to :ticket

  before_save :save_enter_exit_time

  private

    def save_enter_exit_time
      if !tare.nil? and enter.nil?
        self.enter = Time.now
      end
      if !gross.nil? and exit.nil?
        self.exit = Time.now
      end
    end
end
