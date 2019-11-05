class Tickets::TicketDetailsController < ApplicationController

  def new
    @ticket = Ticket.find(params[:ticket_id])
    @ticket_detail = TicketDetail.new
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @ticket_detail = TicketDetail.new(ticket_detail_params)
    @ticket_detail.ticket = @ticket

    if @ticket_detail.save
      redirect_to @ticket
    else
      render 'new'
    end
  end

private

  def ticket_detail_params
    params.require(:ticket_detail).permit(:category_id, :product_id, :tare, :gross, :net)
  end

end
