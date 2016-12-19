class CreateWatches < ActiveRecord:wt_:wt_Migration[5.0]
  def change
    create_table :watches do |t|
      t.integer :wt_id, :primary_key, :autoincrement
      t.text :wt_developer
      t.text :wt_manufacturer
      t.text :wt_model
      t.text :wt_description
      t.text :wt_year
      t.text :wt_resolution
      t.text :wt_diagonal
      t.text :wt_screen_type
      t.integer :wt_color_screen
      t.integer :wt_dpi
      t.integer :wt_touchscreen
      t.integer :wt_multitouch
      t.text :wt_cpu
      t.integer :wt_cores
      t.text :wt_frequency
      t.text :wt_gpu
      t.integer :wt_inner_mem
      t.integer :wt_access_mem
      t.integer :wt_ram
      t.text :wt_cam
      t.text :wt_megapixels
      t.text :wt_photo_res
      t.integer :wt_autofocus
      t.integer :wt_video_rec
      t.text :wt_video_res
      t.integer :wt_fps
      t.integer :wt_finder
      t.integer :wt_calls
      t.integer :wt_email
      t.integer :wt_sms
      t.integer :wt_mms
      t.text :wt_wifi
      t.text :wt_bluetooth
      t.integer :wt_nfc
      t.integer :wt_gps
      t.integer :wt_gyroscope
      t.integer :wt_accelerometer
      t.integer :wt_barometer
      t.integer :wt_thermometer
      t.integer :wt_compass
      t.integer :wt_chronograph
      t.integer :wt_pedometer
      t.integer :wt_pulse_sensor
      t.integer :wt_fitness_tracker
      t.integer :wt_wireless_charge
      t.integer :wt_fast_charge
      t.integer :wt_battery
      t.integer :wt_standby_time
      t.integer :wt_clock_time
      t.text :wt_os
      t.text :wt_online_service
      t.text :wt_compatibility
      t.integer :wt_speaker
      t.integer :wt_mic
      t.text :wt_color
      t.integer :wt_weight
      t.text :wt_dimensions
      t.text :wt_material
      t.text :wt_protection

      t.timestamps
    end
  end
end
