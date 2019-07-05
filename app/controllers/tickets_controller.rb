class TicketsController < ApplicationController

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

  private
    def ticket_params
      params.require(:ticket).permit(:client_id, :product_id, :carrier_id, :trucker_id)
    end

end
