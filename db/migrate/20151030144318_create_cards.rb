class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.decimal :price
      t.decimal :revenue
      t.string :owner
      t.integer :set_size
      t.string :group

      t.timestamps null: false
    end
  end
end
