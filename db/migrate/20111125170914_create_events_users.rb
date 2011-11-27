class CreateEventsUsers < ActiveRecord::Migration
  def up
		create_table :events_users, :force => true do |t|
		    t.integer :event_id, :null => false
		    t.integer :user_id, :null => false
		    t.timestamps
		  end
  end

  def down
    drop_table :events_users
  end
end
