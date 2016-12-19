class CreateTablets < ActiveRecord:tb_:tb_Migration[5.0]
  def change
    create_table :tablets do |t|
      t.integer :tb_id, :primary_key, :autoincrement
      t.text :tb_developer
      t.text :tb_manufacturer
      t.text :tb_model
      t.text :tb_description
      t.text :tb_year
      t.text :tb_resolution
      t.text :tb_diagonal
      t.text :tb_screen_type
      t.integer :tb_dpi
      t.integer :tb_multitouch
      t.text :tb_cpu
      t.integer :tb_cores
      t.text :tb_frequency
      t.text :tb_gpu
      t.integer :tb_inner_mem
      t.integer :tb_access_mem
      t.integer :tb_ram
      t.text :tb_cam
      t.text :tb_megapixels
      t.text :tb_photo_res
      t.integer :tb_hdr
      t.text :tb_front_megapixels
      t.text :tb_video_res
      t.integer :tb_fps
      t.integer :tb_four_k_video
      t.integer :tb_calls
      t.integer :tb_sms
      t.integer :tb_mms
      t.text :tb_three_g
      t.text :tb_four_g
      t.text :tb_wifi
      t.text :tb_bluetooth
      t.integer :tb_nfc
      t.integer :tb_gps
      t.integer :tb_gyroscope
      t.integer :tb_accelerometer
      t.integer :tb_barometer
      t.integer :tb_wireless_charge
      t.integer :tb_fast_charge
      t.integer :tb_stylus
      t.integer :tb_keyboard
      t.integer :tb_battery
      t.integer :tb_standby_time
      t.integer :tb_talk_time
      t.text :tb_os
      t.text :tb_color
      t.integer :tb_weight
      t.text :tb_dimensions
      t.text :tb_material
      t.text :tb_protection

      t.timestamps
    end
  end
end
