class CreateMailenables < ActiveRecord::Migration
  def change
    create_table :mailenables do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
