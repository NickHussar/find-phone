class CreateManufacturers < ActiveRecord:mn_:mn_Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.integer :mn_id, :primary_key, :autoincrement
      t.text :mn_name
      t.text :mn_descriprion
      t.text :mn_devices

      t.timestamps
    end
  end
end
