class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :measurement_unit
      t.decimal :price
      t.string :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
