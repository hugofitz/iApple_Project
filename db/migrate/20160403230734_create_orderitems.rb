class CreateOrderitems < ActiveRecord::Migration
  def change
    create_table :orderitems do |t|
     
      t.integer :item_id
      t.string :product
      t.string :colour
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.references :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
