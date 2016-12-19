class CreateDevelopers < ActiveRecord:dv_:dv_Migration[5.0]
  def change
    create_table :developers do |t|
      t.integer :dv_id, :primary_key, :autoincrement
      t.text :dv_name
      t.text :dv_descriprion
      t.text :dv_devices

      t.timestamps
    end
  end
end
