class CreateVegetables < ActiveRecord::Migration[7.0]
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :price
      t.string :nutritional_benefit
      t.string :image_url

      t.timestamps
    end
  end
end
