class PhonesController < ApplicationController

  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
  end

  def new
    @phone = Phone.new
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def create
    @phone = Phone.new(phone_params)

    if @phone.save
      redirect_to @phone
    else
      render 'new'
    end
  end

  def update
    @phone = Phone.find(params[:id])

    if @phone.update(phone_params)
      redirect_to @phone
    else
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy

    redirect_to phones_path
  end

  private

    def phone_params
      params.require(:phone).permit(:developer, :manufacturer, :model, :description, :year, :resolution, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :access_mem, :ram, :cam, :megapixels, :photo_res, :hdr, :front_megapixels, :video_res, :fps, :four_k_video, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gps, :gyroscope, :accelerometer, :barometer, :wireless_charge, :fast_charge, :vr, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end
