class ChangeThingImageToArray < ActiveRecord::Migration[5.0]
  def change
    remove_column :things, :thing_image, :string
    add_column :things, :thing_images, :string, array: true, default: []
  end
end
