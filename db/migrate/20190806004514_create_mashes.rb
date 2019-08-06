class CreateMashes < ActiveRecord::Migration[6.0]
  def change
    create_table :mashes do |t|
      t.integer :temperature
      t.datetime :time
    end
  end
end
