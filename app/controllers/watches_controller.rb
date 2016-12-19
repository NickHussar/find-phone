class WatchesController < ApplicationController

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:wt_id])
  end

  def new
    @watch = Watch.new
  end

  def edit
    @watch = Watch.find(params[:wt_id])
  end

  def create
    @watch = Watch.new(params[:watch])

    if @watch.save
      redirect_to @watch
    else
      render 'new'
    end
  end

  def update
    @watch = Watch.find(params[:wt_id])

    if @watch.update(watch_params)
      redirect_to @watch
    else
      render 'edit'
    end
  end

  def destroy
    @watch = Watch.find(params[:wt_id])
    @watch.destroy

    redirect_to watches_path
  end

  private
    def watch_params
      params.require(:watch).permit(:wt_developer, :wt_manufacturer, :wt_model, :wt_description, :wt_year, :wt_resolution, :wt_diagonal, :wt_screen_type, :wt_color_screen, :wt_dpi, :wt_touchscreen, :wt_multitouch, :wt_cpu, :wt_cores, :wt_frequency, :wt_gpu, :wt_inner_mem, :wt_access_mem, :wt_ram, :wt_cam, :wt_megapixels, :wt_photo_res, :wt_autofocus, :wt_video_rec, :wt_video_res, :wt_fps, :wt_finder, :wt_calls, :wt_email, :wt_sms, :wt_mms, :wt_wifi, :wt_bluetooth, :wt_nfc, :wt_gps, :wt_gyroscope, :wt_accelerometer, :wt_barometer, :wt_thermometer, :wt_compass, :wt_chronograph, :wt_pedometer, :wt_pulse_sensor, :wt_fitness_tracker, :wt_wireless_charge, :wt_fast_charge, :wt_battery, :wt_standby_time, :wt_clock_time, :wt_os, :wt_online_service, :wt_compatibility, :wt_speaker, :wt_mic, :wt_color, :wt_weight, :wt_dimensions, :wt_material, :wt_protection)
    end
end
