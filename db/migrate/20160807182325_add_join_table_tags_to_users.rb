class AddJoinTableTagsToUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :tags_things, id: false do |t|
      t.integer :tag_id
      t.integer :thing_id
    end
  end
end