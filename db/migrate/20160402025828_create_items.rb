class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :product
      t.text :description
      t.decimal :price
      t.string :image
      t.string :category
      t.string :colour

      t.timestamps null: false
    end
  end
end
