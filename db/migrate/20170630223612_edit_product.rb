class EditProduct < ActiveRecord::Migration[5.1]
  def change
    change_table :products do |t|
      t.column :url, :string
    end
  end
end
