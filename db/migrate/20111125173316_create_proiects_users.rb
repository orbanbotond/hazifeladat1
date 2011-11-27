class CreateProiectsUsers < ActiveRecord::Migration
  def up
    create_table :proiects_users, :force => true do |t|
        t.integer :proiect_id, :null => false
        t.integer :user_id, :null => false
        t.timestamps
      end
  end

  def down
    drop_table :proiects_users
  end
end
