class PhonesController < ApplicationController

  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:ph_id])
  end

  def new
    @phone = Phone.new
  end

  def edit
    @phone = Phone.find(params[:ph_id])
  end

  def create
    @phone = Phone.new(params[:phone])

    if @phone.save
      redirect_to @phone
    else
      render 'new'
    end
  end

  def update
    @phone = Phone.find(params[:ph_id])

    if @phone.update(phone_params)
      redirect_to @phone
    else
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:ph_id])
    @phone.destroy

    redirect_to phones_path
  end

  private
    def phone_params
      params.require(:phone).permit(:ph_developer, :ph_manufacturer, :ph_model, :ph_description, :ph_year, :ph_resolution, :ph_diagonal, :ph_screen_type, :ph_dpi, :ph_multitouch, :ph_cpu, :ph_cores, :ph_frequency, :ph_gpu, :ph_inner_mem, :ph_access_mem, :ph_ram, :ph_cam, :ph_megapixels, :ph_photo_res, :ph_hdr, :ph_front_megapixels, :ph_video_res, :ph_fps, :ph_four_k_video, :ph_three_g, :ph_four_g, :ph_wifi, :ph_bluetooth, :ph_nfc, :ph_gps, :ph_gyroscope, :ph_accelerometer, :ph_barometer, :ph_wireless_charge, :ph_fast_charge, :ph_vr, :ph_battery, :ph_standby_time, :ph_talk_time, :ph_os, :ph_color, :ph_weight, :ph_dimensions, :ph_material, :ph_protection)
    end
end
