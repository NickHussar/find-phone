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
    @tablet = Tablet.new(tablet_params)

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
      params.require(:tablet).permit(:developer, :manufacturer, :model, :description, :year, :resolution, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :access_mem, :ram, :cam, :megapixels, :photo_res, :hdr, :front_megapixels, :video_res, :fps, :four_k_video, :calls, :sms, :mms, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gps, :gyroscope, :accelerometer, :barometer, :wireless_charge, :fast_charge, :stylus, :keyboard, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end
