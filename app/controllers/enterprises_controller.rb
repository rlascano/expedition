class EnterprisesController < ApplicationController
  def index
    @enterprises = Enterprise.all
  end

  def show
    @enterprise = Enterprise.find(params[:id])
  end

  def new
    @enterprise = Enterprise.new
    @enterprise.build_address
  end

  def create
    @enterprise = Enterprise.new(enterprise_params)

    if @enterprise.save
      redirect_to @enterprise
    else
      render 'new'
    end
  end

  def edit
    @enterprise = Enterprise.find(params[:id])
  end

  def update
    @enterprise = Enterprise.find(params[:id])

    if @enterprise.update(enterprise_params)
      redirect_to @enterprise
    else
      render 'edit'
    end
  end

  def destroy
    @enterprise = Enterprise.find(params[:id])
    @enterprise.destroy

    redirect_to enterprises_path
  end

  private

    def enterprise_params
      params.require(:enterprise).permit(:name, :cuit_number, address_attributes: [:id, :city, :street, :state, :postal_code])
    end
end
