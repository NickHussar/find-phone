class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :developers, :descriprion, :description
    rename_column :manufacturers, :descriprion, :description
  end
end
