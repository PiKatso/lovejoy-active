class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.column :name, :string
      t.column :style, :string
      t.column :cost, :decimal, :precision => 8, :scale => 2
      t.column :origin, :string
      t.column :brand, :string

      t.timestamps
    end
  end
end
