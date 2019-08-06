class CreateBrews < ActiveRecord::Migration[6.0]
  def change
    create_table :brews do |t|
      t.references :user, foreign_key: true
      t.references :ferment, foreign_key: true
      t.references :hop, foreign_key: true
      t.references :yeast, foreign_key: true
      t.references :note, foreign_key: true
    end
  end
end
