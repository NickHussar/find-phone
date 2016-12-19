class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def show
    @manufacturer = Manufacturer.find(params[:mn_id])
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def edit
    @manufacturer = Manufacturer.find(params[:mn_id])
  end

  def create
    @manufacturer = Manufacturer.new(params[:manufacturer])

    if @manufacturer.save
      redirect_to @manufacturer
    else
      render 'new'
    end
  end

  def update
    @manufacturer = Manufacturer.find(params[:mn_id])

    if @manufacturer.update(manufacturer_params)
      redirect_to @manufacturer
    else
      render 'edit'
    end
  end

  def destroy
    @manufacturer = Manufacturer.find(params[:mn_id])
    @manufacturer.destroy

    redirect_to manufacturers_path
  end

  private
    def manufacturer_params
      params.require(:manufacturer).permit(:mn_name, :mn_description, :mn_devices)
    end
end
