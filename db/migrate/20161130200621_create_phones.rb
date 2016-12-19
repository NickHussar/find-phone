class CreatePhones < ActiveRecord:ph_:ph_Migration[5.0]
  def change
    create_table :phones do |t|
      t.integer :ph_id, :primary_key, :autoincrement
      t.text :ph_developer
      t.text :ph_manufacturer
      t.text :ph_model
      t.text :ph_description
      t.text :ph_year
      t.text :ph_resolution
      t.text :ph_diagonal
      t.text :ph_screen_type
      t.integer :ph_dpi
      t.integer :ph_multitouch
      t.text :ph_cpu
      t.integer :ph_cores
      t.text :ph_frequency
      t.text :ph_gpu
      t.integer :ph_inner_mem
      t.integer :ph_access_mem
      t.integer :ph_ram
      t.text :ph_cam
      t.text :ph_megapixels
      t.text :ph_photo_res
      t.integer :ph_hdr
      t.text :ph_front_megapixels
      t.text :ph_video_res
      t.integer :ph_fps
      t.integer :ph_four_k_video
      t.text :ph_three_g
      t.text :ph_four_g
      t.text :ph_wifi
      t.text :ph_bluetooth
      t.integer :ph_nfc
      t.integer :ph_gps
      t.integer :ph_gyroscope
      t.integer :ph_accelerometer
      t.integer :ph_barometer
      t.integer :ph_wireless_charge
      t.integer :ph_fast_charge
      t.integer :ph_vr
      t.integer :ph_battery
      t.integer :ph_standby_time
      t.integer :ph_talk_time
      t.text :ph_os
      t.text :ph_color
      t.integer :ph_weight
      t.text :ph_dimensions
      t.text :ph_material
      t.text :ph_protection

      t.timestamps
    end
  end
end
