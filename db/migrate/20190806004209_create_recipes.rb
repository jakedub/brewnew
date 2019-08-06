class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :author
      t.string :brew_method
      t.integer :batch_size
      t.integer :est_boil_size
      t.integer :original_gravity
      t.integer :final_gravity
      t.integer :abv
      t.integer :ibu
      t.integer :srn
      t.string :brew_type
      t.string :brew_style
      t.integer :boil_time
      t.integer :efficiency
      t.string :storage_tpe
      t.boolean :status
    end
  end
end
