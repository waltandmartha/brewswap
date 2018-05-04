class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.references :user, foreign_key: true
      t.string :amount_in_ml
      t.string :number_of_bottles_available
      t.text :beer_type
      t.text :main_ingredient
      t.string :postcode
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
