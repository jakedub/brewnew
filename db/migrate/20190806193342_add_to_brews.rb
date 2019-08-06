class AddToBrews < ActiveRecord::Migration[6.0]
  def change
    add_reference :brews, :recipe, foreign_key: true
  end
end
