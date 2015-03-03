class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.float :battery
      t.string :door

      t.timestamps null: false
    end
  end
end
