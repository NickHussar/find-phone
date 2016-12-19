class TabletsController < ApplicationController

  def index
    @tablets = Tablet.all
  end

  def show
    @tablet = Tablet.find(params[:tb_id])
  end

  def new
    @tablet = Tablet.new
  end

  def edit
    @tablet = Tablet.find(params[:tb_id])
  end

  def create
    @tablet = Tablet.new(params[:tablet])

    if @tablet.save
      redirect_to @tablet
    else
      render 'new'
    end
  end

  def update
    @tablet = Tablet.find(params[:tb_id])

    if @tablet.update(tablet_params)
      redirect_to @tablet
    else
      render 'edit'
    end
  end

  def destroy
    @tablet = Tablet.find(params[:tb_id])
    @tablet.destroy

    redirect_to tablets_path
  end

  private
    def tablet_params
      params.require(:tablet).permit(:tb_developer, :tb_manufacturer, :tb_model, :tb_description, :tb_year, :tb_resolution, :tb_diagonal, :tb_screen_type, :tb_dpi, :tb_multitouch, :tb_cpu, :tb_cores, :tb_frequency, :tb_gpu, :tb_inner_mem, :tb_access_mem, :tb_ram, :tb_cam, :tb_megapixels, :tb_photo_res, :tb_hdr, :tb_front_megapixels, :tb_video_res, :tb_fps, :tb_four_k_video, :tb_calls, :tb_sms, :tb_mms, :tb_three_g, :tb_four_g, :tb_wifi, :tb_bluetooth, :tb_nfc, :tb_gps, :tb_gyroscope, :tb_accelerometer, :tb_barometer, :tb_wireless_charge, :tb_fast_charge, :tb_stylus, :tb_keyboard, :tb_battery, :tb_standby_time, :tb_talk_time, :tb_os, :tb_color, :tb_weight, :tb_dimensions, :tb_material, :tb_protection)
    end
end
