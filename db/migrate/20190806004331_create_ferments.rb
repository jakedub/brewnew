class CreateFerments < ActiveRecord::Migration[6.0]
  def change
    create_table :ferments do |t|
      t.string :type
      t.string :name
      t.integer :weight
      t.string :item
      t.datetime :time_added
    end
  end
end
