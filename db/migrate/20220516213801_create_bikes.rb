class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :brand
      t.string :location
      t.integer :price_per_day
      t.string :category
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
