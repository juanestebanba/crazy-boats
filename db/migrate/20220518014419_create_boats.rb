class CreateBoats < ActiveRecord::Migration[6.1]
  def change
    create_table :boats do |t|
      t.string :name
      t.string :category
      t.integer :capacity
      t.float :price

      t.timestamps
    end
  end
end
