class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :name
      t.string :mac_address, :unique => true
      t.text :description
      t.boolean :mail_send

      t.timestamps null: false
    end
  end
end
