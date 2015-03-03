class CreateJoinTableSensorSetting < ActiveRecord::Migration
  def change
    create_join_table :sensors, :settings do |t|
      # t.index [:sensor_id, :setting_id]
      # t.index [:setting_id, :sensor_id]
    end
  end
end
