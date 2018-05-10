class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.text :username
      t.text :bio
      t.text :location
      t.text :image_data
      t.float :latitude
      t.float :longitude
      t.string :street_address
      t.string :city
      t.string :postcode
      t.string :state
      t.string :country_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
