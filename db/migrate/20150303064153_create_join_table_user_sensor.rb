class CreateJoinTableUserSensor < ActiveRecord::Migration
  def change
    create_join_table :users, :sensors do |t|
      # t.index [:user_id, :sensor_id]
      # t.index [:sensor_id, :user_id]
    end
  end
end
