class AddJoinTableThingsToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :things_users, id: false do |t|
      t.integer :thing_id
      t.integer :user_id
    end
  end
end

