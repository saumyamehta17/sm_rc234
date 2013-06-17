class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :orderno
      t.date :delivered_date
      t.references :category

      t.timestamps
    end
    add_index :products, :category_id
  end
end
