class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :description
      t.text :image_data
      t.references :user, foreign_key: true
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
