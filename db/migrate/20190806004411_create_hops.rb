class CreateHops < ActiveRecord::Migration[6.0]
  def change
    create_table :hops do |t|
      t.integer :amount
      t.datetime :time
      t.string :name
      t.string :hop_type
      t.string :use
    end
  end
end
