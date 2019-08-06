class CreateYeasts < ActiveRecord::Migration[6.0]
  def change
    create_table :yeasts do |t|
      t.string :brand
      t.string :variety
      t.integer :temperature
    end
  end
end
