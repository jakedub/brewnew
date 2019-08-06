class AddOriginalToBrew < ActiveRecord::Migration[6.0]
  def change
    add_reference :brews, :original, polymorphic: true, index: true
  end
end
