class CreateJoinTableUserMailenable < ActiveRecord::Migration
  def change
    create_join_table :users, :mailenables do |t|
      # t.index [:user_id, :mailenable_id]
      # t.index [:mailenable_id, :user_id]
    end
  end
end
