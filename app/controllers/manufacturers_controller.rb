class ManufacturersController < ApplicationController

  def show
    @manufacturer = Manufacturer.find(params[:id])
  end

  def new
  end

  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])

    @manufacturer.save
    redirect_to @manufacturer
  end

  private
    def phone_params
      params.require(:phone).permit(:name, :description, :devices)
    end
end
