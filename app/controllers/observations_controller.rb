class ObservationsController < ApplicationController

  def index
    @observations = Observation.all
  end

  def create
    @ticket = Ticket.find(params[:ticket_id])
    @observation = @ticket.observations.create(observation_params)
    render @observation
  end

  def destroy
    ticket = Ticket.find(params[:ticket_id])
    @observation = Observation.find(params[:id])
    @observation.destroy
    redirect_to ticket
  end

  private

  def observation_params
    params.require(:observation).permit(:description)
  end

end
