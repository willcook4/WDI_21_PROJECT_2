class RemoveCategoryIdFromThings < ActiveRecord::Migration[5.0]
  def change
    remove_column :things, :category_id
  end
end
