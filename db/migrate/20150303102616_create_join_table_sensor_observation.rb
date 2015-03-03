class CreateJoinTableSensorObservation < ActiveRecord::Migration
  def change
    create_join_table :sensors, :observations do |t|
      # t.index [:sensor_id, :observation_id]
      # t.index [:observation_id, :sensor_id]
    end
  end
end
