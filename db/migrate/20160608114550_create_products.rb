class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :average_rating
      t.string :url

      t.timestamps null: false
    end
  end
end
