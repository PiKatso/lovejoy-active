class EditReviews < ActiveRecord::Migration[5.1]
  def change
    change_table :reviews do |t|
      t.column :product_id, :integer
    end
  end
end
