class CreateThings < ActiveRecord::Migration[5.0]
  def change
    create_table :things do |t|
      t.string :thing_image
      t.string :title
      t.text :description
      t.string :owner_id
      t.string :loanee_id
      t.string :category_id
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
