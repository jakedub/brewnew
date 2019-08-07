class AddToBrew < ActiveRecord::Migration[6.0]
  def change
    add_reference :brews, :mash, foreign_key: true
  end
end
