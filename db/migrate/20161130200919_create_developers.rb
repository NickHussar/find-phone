class CreateDevelopers < ActiveRecord::Migration[5.0]
  def change
    create_table :developers do |t|
      t.text :name
      t.text :descriprion
      t.text :devices

      t.timestamps
    end
  end
end
