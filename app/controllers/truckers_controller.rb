class TruckersController < ApplicationController
  def index
    @truckers = Trucker.all
  end

  def show
    @trucker = Trucker.find(params[:id])
  end

  def new
    @trucker = Trucker.new
  end

  def create
    @trucker = Trucker.new(trucker_params)
    if @trucker.save
      redirect_to @trucker
    else
      render 'new'
    end
  end

  def edit
    @trucker = Trucker.find(params[:id])
  end

  def update
    @trucker = Trucker.find(params[:id])
    if @trucker.update(trucker_params)
      redirect_to @trucker
    else
      render 'edit'
    end
  end

  def destroy
    @trucker = Trucker.find(params[:id])
    @trucker.destroy

    redirect_to truckers_path
  end

  private

    def trucker_params
      params.require(:trucker).permit(:name, :document, :carnet_expiration_date)
    end
end
